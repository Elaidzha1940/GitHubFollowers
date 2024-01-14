//  /*
//
//  Project: GitHubFollowers
//  File: UIViewController+Ext.swift
//  Created by: Elaidzha Shchukin
//  Date: 14.01.2024
//
//  */

import UIKit

extension UIViewController {
    
    func presentGFAlertOnMainThread(title: String, message: String, buttonTitle: String) {
        DispatchQueue.main.async {
            let alertVC = GFAlertVC(tile: title, message: message, buttonTitle: buttonTitle)
            alertVC.modalPresentationStyle = .overFullScreen
            alertVC.modalTransitionStyle = .crossDissolve
            self.present(alertVC, animated: true)
        }
    }
}
