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
    static let shared = NetworkManager()
    let baseURL = "https://api.github.com/users/"
    
    private init() {}
    
    
    func getFollowers(for username: String, page: Int, completed: @escaping ([Follower]?, String?) -> ()) {
        let endpoint = baseURL + "\(username)/followers?per_page=100\(page)"
        
        guard let url = URL(string: endpoint) else {
            completed(nil, "This username created an invalid request. Plese try again.")
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            if let _ = error {
                completed(nil, "Unable to complete your request. Plese cheack your internet connection.")
                return
            }
            
            guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
                completed(nil, "Invalid response from the server. Plese try again.")
                return
            }
            
            guard let data = data else {
                completed(nil, "The data received from the server was invalid. Plese try again.")
                return
            }
            
            do {
                let decoder = JSONDecoder()
                decoder.keyDecodingStrategy = .convertFromSnakeCase
                let followers = try decoder.decode([Follower].self, from: data)
                completed(followers, nil)
            } catch {
                completed(nil, "The data received from the server was invalid. Plese try again.")
            }
        }
        task.resume()
    }
}
