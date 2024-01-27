//  /*
//
//  Project: GitHubFollowers
//  File: UIHelper.swift
//  Created by: Elaidzha Shchukin
//  Date: 16.01.2024
//
//  */

import UIKit

enum UIHelper {
    
    static func createThreeColumnFlowLayout(in view: UIView) -> UICollectionViewFlowLayout  {
        let width                       = view.bounds.width
        let padding: CGFloat            = 20
        let minimumItemSpacing: CGFloat = 10
        let availableWidth              = width - (padding * 2) - (minimumItemSpacing * 2)
        let itemWidth                   = availableWidth / 4
    
        let flowLayout                  = UICollectionViewFlowLayout()
        flowLayout.sectionInset         = UIEdgeInsets(top: padding, left: padding, bottom: padding, right: padding)
        flowLayout.itemSize             = CGSize(width: itemWidth, height: itemWidth + 50)
        
        return flowLayout
    }
}
