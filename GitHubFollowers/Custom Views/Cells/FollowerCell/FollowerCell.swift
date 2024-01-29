//  /*
//
//  Project: GitHubFollowers
//  File: FollowerCell.swift
//  Created by: Elaidzha Shchukin
//  Date: 15.01.2024
//
//  */

import UIKit
import SwiftUI

class FollowerCell: UICollectionViewCell {
    static let reuseID  = "FollowerCell"
    
//    let avatarImageView = GFAvatarImageView(frame: .zero)
//    let usernameLabel   = GFTitleLabel(textAlignment: .center, fontSize: 16)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        //configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: iOS 16 <- iOS 17 
    func set(follower: Follower) {
            contentConfiguration = UIHostingConfiguration { FollowerView(follower: follower) }
    }
    
//    private func configure() {
//        addSubviews(avatarImageView, usernameLabel)
//        let padding: CGFloat = 10
//        
//        NSLayoutConstraint.activate([
//            avatarImageView.topAnchor.constraint(equalTo: topAnchor, constant: padding),
//            avatarImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: padding),
//            avatarImageView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -padding),
//            avatarImageView.heightAnchor.constraint(equalTo: avatarImageView.widthAnchor),
//            
//            usernameLabel.topAnchor.constraint(equalTo: avatarImageView.bottomAnchor, constant: 14),
//            usernameLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: padding),
//            usernameLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -padding),
//            usernameLabel.heightAnchor.constraint(equalToConstant: 20),
//        ])
//    }
}
