//
//  User.swift
//  GHFollers
//
//  Created by Kar Ho She on 26/7/2020.
//  Copyright © 2020 Kar Ho She. All rights reserved.
//

import Foundation

struct User: Codable {
    var login: String
    var avatarUrl: String
    var name: String?
    var location: String?
    var bio: String?
    var publicRepo: Int
    var publicGists: Int
    var htmlUrl: String
    var following: Int
    var followers: Int
    var createdAt: String
}
