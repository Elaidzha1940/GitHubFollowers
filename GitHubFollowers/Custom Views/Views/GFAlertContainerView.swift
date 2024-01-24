//  /*
//
//  Projcet: GitHubFollowers
//  File: GFAlertContainerView.swift
//  Created by: Elaidzha Shchukin
//  Date: 24.01.2024
//
//  */

import UIKit

class GFAlertContainerView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure() 
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        backgroundColor = .systemBackground
        layer.cornerRadius = 15
        layer.borderWidth = 3
        layer.borderColor = UIColor.white.cgColor
        translatesAutoresizingMaskIntoConstraints = false
    }
}
