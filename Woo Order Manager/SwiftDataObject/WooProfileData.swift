//
//  WooProfileData.swift
//  Woo Order Manager
//
//  Created by Len Chan on 8/9/2025.
//

import Foundation
import SwiftData

@Model
final class WooProfileData{
var name: String
   var  domain: String
var username: String
var password: String
    var createDateTime:Date
    init(name: String, domain: String, username: String, password: String) {
        self.name = name
        self.domain = domain
        self.username = username
        self.password = password
        self.createDateTime = Date.now
    }
}
