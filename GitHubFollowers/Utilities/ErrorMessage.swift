//  /*
//
//  Project: GitHubFollowers
//  File: ErrorMessage.swift
//  Created by: Elaidzha Shchukin
//  Date: 14.01.2024
//
//  */

import Foundation

enum GFError: String, Error {
    
    case invalidUsername = "This username created an invalid request. Plese try again."
    case unableToComplete  = "Unable to complete your request. Plese cheack your internet connection."
    case invalidResponse = "Invalid response from the server. Plese try again."
    case invalidData = "The data received from the server was invalid. Plese try again."
}
