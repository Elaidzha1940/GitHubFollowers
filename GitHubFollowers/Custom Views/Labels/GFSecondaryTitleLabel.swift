//  /*
//
//  Project: GitHubFollowers
//  File: GFSecondaryTitleLabel.swift
//  Created by: Elaidzha Shchukin
//  Date: 19.01.2024
//
//  */

import UIKit

class GFSecondaryTitleLabel: UILabel {

    override init(frame: CGRect) {
        super.init(frame: frame)
        congigure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    convenience init(fontSize: CGFloat) {
        self.init(frame: .zero)
        font = UIFont.systemFont(ofSize: fontSize, weight: .medium)
    }
    
    private func congigure() {
        textColor = .secondaryLabel
        adjustsFontSizeToFitWidth = true
        minimumScaleFactor = 0.90
        lineBreakMode = .byTruncatingTail
        translatesAutoresizingMaskIntoConstraints = false
    }
}
