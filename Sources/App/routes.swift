import Fluent
import Vapor

func routes(_ app: Application) throws {
    app.group("api") { api in
        // Authentication
        if app.environment != .production{
            
            let apiDocsController = APIDocsController(app: app)

            app.get("docs", use: apiDocsController.view)
                .summary("View API Documentation")
                .description("API Documentation is served using the Redoc web app.")
                .tags("Documentation")

            app.get("docs", "openapi.yml", use: apiDocsController.show)
                .summary("Download API Documentation")
                .description("Retrieve the OpenAPI documentation as a YAML file.")
                .tags("Documentation")
            
        }
        try! api.register(collection: AuthenticationController())
    }
}
