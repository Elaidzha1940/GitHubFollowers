//  /*
//
//  Project: GitHubFollowers
//  File: NetworkManager.swift
//  Created by: Elaidzha Shchukin
//  Date: 14.01.2024
//
//  */

import Foundation

class NetworkManager {
    let shared = NetworkManager()
    let baseURL = "https://api.github.com/user/"
    
    private init() {}
    
    
    func getFollowers(for username: String, page: Int, completed: @escaping ([Follower]?, String?) -> ()) {
        let endpoint = baseURL + "/users/\(username)/followers?per_page=100\(page)"
        
        guard let url = URL(string: endpoint) else {
            completed(nil, "This username created an invalid request. Plese try again.")
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            <#code#>
        }
        task.resume()
    }
}
