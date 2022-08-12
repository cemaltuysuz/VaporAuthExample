//
//  Keypair.swift
//  
//
//  Created by cemal tüysüz on 11.08.2022.
//

import Foundation

struct Keypair: Decodable {
    let keys: [KeypairSet]
}


class MyKeyPair{
    static let shared = MyKeyPair()
    
    var currentKeyPair:KeypairSet?
}
