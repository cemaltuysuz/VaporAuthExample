//
//  KeypairSet.swift
//  
//
//  Created by cemal tüysüz on 11.08.2022.
//

import Foundation

struct KeypairSet:Decodable {
    let p, kty, q, d: String
    let e, use, kid, qi: String
    let dp, alg, dq, n: String
}
