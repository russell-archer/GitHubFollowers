//
//  User.swift
//  GitHubFollowers
//
//  Created by Russell Archer on 09/04/2020.
//  Copyright © 2020 Russell Archer. All rights reserved.
//

import Foundation

struct User: Codable {
    let login: String
    let avatarUrl: String
    var name: String?  // A person's real name is optional
    var location: String?
    var bio: String?
    let publicRepos: Int
    let publicGists: Int
    let htmlUrl: String  // Profile
    let following: Int
    let followers: Int
    let createdAt: String
}