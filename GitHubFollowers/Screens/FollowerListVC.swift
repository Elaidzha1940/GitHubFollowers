//  /*
//
//  Project: GitHubFollowers
//  File: FollowerListVC.swift
//  Created by: Elaidzha Shchukin
//  Date: 13.01.2024
//
//  */

import UIKit

class FollowerListVC: UIViewController {
    var username: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        navigationController?.isNavigationBarHidden = false
        navigationController?.navigationBar.prefersLargeTitles = true
    }
}
