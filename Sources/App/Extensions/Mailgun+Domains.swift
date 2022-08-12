import Mailgun
import Vapor

extension MailgunDomain {
    static var sandbox: MailgunDomain { .init("sandbox73258dd78fa9402fb7a251e13d5915b8.mailgun.org", .us)}
}
