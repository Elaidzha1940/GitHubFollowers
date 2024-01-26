//  /*
//
//  Projcet: GitHubFollowers
//  File: GFRepoItemVC.swift
//  Created by: Elaidzha Shchukin
//  Date: 20.01.2024
//
//  */

import UIKit

protocol GFRepoItemVCDelegate: AnyObject {
    func didTapGitGubProfile(for user: User)
    func didTapGitGubFollowers(for user: User)
}

class GFRepoItemVC: GFItemInfoVC {
    
    weak var delegate: GFRepoItemVCDelegate!
    
    init(user: User, delegate: GFRepoItemVCDelegate) {
        super.init(user: user)
        self.delegate = delegate
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
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
        delegate.didTapGitGubProfile(for: user)
    }
}

