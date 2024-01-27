//  /*
//
//  Project: GitHubFollowers
//  File: FollowerCell.swift
//  Created by: Elaidzha Shchukin
//  Date: 15.01.2024
//
//  */

import UIKit

class FollowerCell: UICollectionViewCell {
    static let reuseID  = "FollowerCell"
    
    let avatarImageView = GFAvatarImageView(frame: .zero)
    let usernameLabel   = GFTitleLabel(textAlignment: .center, fontSize: 16)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func set(follower: Follower) {
        avatarImageView.downloadImage(from: follower.avatarUrl)
        usernameLabel.text = follower.login
    }
    
    private func configure() {
        addSubviews(avatarImageView, usernameLabel)
        let padding: CGFloat = 10
        
        NSLayoutConstraint.activate([
            avatarImageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: padding),
            avatarImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: padding),
            avatarImageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -padding),
            avatarImageView.heightAnchor.constraint(equalTo: avatarImageView.widthAnchor),
            
            usernameLabel.topAnchor.constraint(equalTo: avatarImageView.bottomAnchor, constant: 14),
            usernameLabel.leadingAnchor.constraint(equalTo: avatarImageView.leadingAnchor, constant: padding),
            usernameLabel.trailingAnchor.constraint(equalTo: avatarImageView.trailingAnchor, constant: -padding),
            usernameLabel.heightAnchor.constraint(equalToConstant: 20),
        ])
    }
}
