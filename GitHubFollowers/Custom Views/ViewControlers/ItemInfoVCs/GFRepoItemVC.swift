//  /*
//
//  Projcet: GitHubFollowers
//  File: GFRepoItemVC.swift
//  Created by: Elaidzha Shchukin
//  Date: 20.01.2024
//
//  */

import UIKit

class GFRepoItemVC: GFItemInfoVC {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureItems()
    }
    
    private func configureItems() {
        itemInfoViewOne.set(itemInfoType: .repos, withCount: user.publicRepos)
        itemInfoViewTwo.set(itemInfoType: .gists, withCount: user.publicGists)
        actionButton.set(backgroundColor: .systemPink, title: "GitHub Profile")
    }
    
    override func actionButtonTapped() {
        delegate.didTapGitGubFollowers(for: user)
    }
}

