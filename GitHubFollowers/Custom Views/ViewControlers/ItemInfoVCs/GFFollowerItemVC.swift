//  /*
//
//  Projcet: GitHubFollowers
//  File: GFFollowerItemVC.swift
//  Created by: Elaidzha Shchukin
//  Date: 20.01.2024
//
//  */

import UIKit

class GFFollowerItemVC: GFItemInfoVC {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureItems()
    }
    
    private func configureItems() {
        itemInfoViewOne.set(itemInfoType: .followers, withCount: user.followers)
        itemInfoViewTwo.set(itemInfoType: .following, withCount: user.following)
        actionButton.set(backgroundColor: .systemGreen, title: "Get Followers")
    }
    
    override func actionButtonTapped() {
        delegate.didTapGitGubFollowers(for: user)
    }
}
