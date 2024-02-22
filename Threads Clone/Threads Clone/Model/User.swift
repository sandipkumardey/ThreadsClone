//
//  User.swift
//  Threads Clone
//
//  Created by Sandip Kumar Dey on 20/12/23.
//

import Foundation

struct User: Identifiable, Codable, Hashable {
    let id: String
    let fullname: String
    let email:  String
    let username: String
    var profileImageUrl: String?
    var bio: String?
}
