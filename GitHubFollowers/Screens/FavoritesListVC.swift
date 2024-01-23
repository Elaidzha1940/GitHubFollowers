//  /*
//
//  Project: GitHubFollowers
//  File: FavoritesListVC.swift
//  Created by: Elaidzha Shchukin
//  Date: 12.01.2024
//
//  */

import UIKit

class FavoritesListVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemMint
        
        PersistenceManager.retrieveFavorites { result in
            switch result {
            case .success(let favorites):
                break
            case .failure(let error):
                break
            }
        }
    }
}
