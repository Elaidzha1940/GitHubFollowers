//  /*
//
//  Project: GitHubFollowers
//  File: NetworkManager.swift
//  Created by: Elaidzha Shchukin
//  Date: 14.01.2024
//
//  */

import UIKit

class NetworkManager {
    static let shared = NetworkManager()
    private  let baseURL = "https://api.github.com/users/"
    let cache = NSCache<NSString, UIImage>()
    
    private init() {}
    
    
    func getFollowers(for username: String, page: Int, completed: @escaping (Result<[Follower], GFError>) -> ()) {
        let endpoint = baseURL + "\(username)/followers?per_page=100\(page)"
        
        guard let url = URL(string: endpoint) else {
            completed(.failure(.invalidUsername))
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            if let _ = error {
                completed(.failure(.unableToComplete))
                return
            }
            
            guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
                completed(.failure(.invalidResponse))
                return
            }
            
            guard let data = data else {
                completed(.failure(.invalidData))
                return
            }
            
            do {
                let decoder = JSONDecoder()
                decoder.keyDecodingStrategy = .convertFromSnakeCase
                let followers = try decoder.decode([Follower].self, from: data)
                completed(.success(followers))
            } catch {
                completed(.failure(.invalidData))
            }
        }
        task.resume()
    }
    //
    func getUserInfo(for username: String, page: Int, completed: @escaping (Result<User, GFError>) -> ()) {
        let endpoint = baseURL + "\(username)"
        
        guard let url = URL(string: endpoint) else {
            completed(.failure(.invalidUsername))
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            if let _ = error {
                completed(.failure(.unableToComplete))
                return
            }
            
            guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
                completed(.failure(.invalidResponse))
                return
            }
            
            guard let data = data else {
                completed(.failure(.invalidData))
                return
            }
            
            do {
                let decoder = JSONDecoder()
                decoder.keyDecodingStrategy = .convertFromSnakeCase
                let user = try decoder.decode(User.self, from: data)
                completed(.success(user))
            } catch {
                completed(.failure(.invalidData))
            }
        }
        task.resume()
    }
}
