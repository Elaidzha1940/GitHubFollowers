//  /*
//
//  Project: GitHubFollowers
//  File: GFButton.swift
//  Created by: Elaidzha Shchukin
//  Date: 12.01.2024
//
//  */

import UIKit

class GFButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    convenience init(backgroundColor: UIColor, title: String) {
        self.init(frame: .zero)
        set(color: backgroundColor, title: title)
//        self.backgroundColor = backgroundColor
//        self.setTitle(title, for: .normal)
    }
    
    private func configure() {
        
        configuration = .tinted()
        configuration?.cornerStyle = .medium
        
        //layer.cornerRadius = 15
        //titleLabel?.font   = UIFont.preferredFont(forTextStyle: .headline)
        //setTitleColor(.white, for: .normal)
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    func set(color: UIColor, title: String) {
        
        configuration?.baseBackgroundColor = color
        configuration?.baseForegroundColor = color
        configuration?.title = title
        
        //self.backgroundColor = backgroundColor
        //setTitle(title, for: .normal)
    }
}
