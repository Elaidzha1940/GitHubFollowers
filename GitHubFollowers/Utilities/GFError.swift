//  /*
//
//  Project: GitHubFollowers
//  File: GFError.swift
//  Created by: Elaidzha Shchukin
//  Date: 14.01.2024
//
//  */

import Foundation

enum GFError: String, Error { 
    
    case invalidUsername    = "This username created an invalid request. Please try again."
    case unableToComplete   = "Unable to complete your request. Plese cheack your internet connection."
    case invalidResponse    = "Invalid response from the server. Plese try again."
    case invalidData        = "The data received from the server was invalid. Please try again."
    case unableToFavorite   = "There were an error favoriting this user. Please try again."
    case alreadyInFavorites = "You've already favorited this user. You must Really like them."
}
