//  /*
//
//  Projcet: GitHubFollowers
//  File: GFAvatarImageView.swift
//  Created by: Elaidzha Shchukin
//  Date: 15.01.2024
//
//  */

import UIKit

class GFAvatarImageView: UIImageView {
    
    let cache            = NetworkManager.shared.cache
    let placeholderImage = Images.placeholder
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        layer.cornerRadius = 15
        clipsToBounds      = true
        image              = placeholderImage
        translatesAutoresizingMaskIntoConstraints = false
        
        widthAnchor.constraint(equalToConstant: 75).isActive = true
        heightAnchor.constraint(equalToConstant: 75).isActive = true
    }
    
    func downloadImage(from url: String) {
        Task { image = await NetworkManager.shared.downloadImage(from: url) ?? placeholderImage }
    }
}
