//  /*
//
//  Project: GitHubFollowers
//  File: User.swift
//  Created by: Elaidzha Shchukin
//  Date: 14.01.2024
//
//  */

import Foundation

struct User: Codable {
    var login: String
    var avatarUrl: String
    var name: String?
    var location: String?
    var bio: String?
    var publicRepos: Int
    var publicGists: Int
    var htmlUrl: String
    var following: Int
    var followers: Int
    var createdAt: String
}
