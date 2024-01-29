//  /*
//
//  Project: GitHubFollowers
//  File: UIViewController+Ext.swift
//  Created by: Elaidzha Shchukin
//  Date: 14.01.2024
//
//  */

import UIKit
import SafariServices

extension UIViewController {
    
    func presentGFAlert(title: String, message: String, buttonTitle: String) {
        let alertVC = GFAlertVC(tile: title, message: message, buttonTitle: buttonTitle)
        alertVC.modalPresentationStyle = .overFullScreen
        alertVC.modalTransitionStyle = .crossDissolve
        present(alertVC, animated: true)
    }
    
    func presentDefaultError() {
        let alertVC = GFAlertVC(tile: "Something went wrong",
                                message: "We were unable to complete yor task at this time.",
                                buttonTitle: "Ok")
        alertVC.modalPresentationStyle = .overFullScreen
        alertVC.modalTransitionStyle = .crossDissolve
        present(alertVC, animated: true)
    }
    
    
    func presentSafariVC(with url: URL) {
        let safariVC = SFSafariViewController(url: url)
        safariVC.preferredControlTintColor = .systemMint
        present(safariVC, animated: true)
    }
}
