//  /*
//
//  Projcet: GitHubFollowers
//  File: UIView+Ext.swift
//  Created by: Elaidzha Shchukin
//  Date: 25.01.2024
//
//  */

import UIKit

extension UIView {
    func addSubviews(_ views: UIView...) {
        for view in views {
            addSubview(view)
        }
    }
}

