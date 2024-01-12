//  /*
//
//  Project: GitHubFollowers
//  File: GFAlertVC.swift
//  Created by: Elaidzha Shchukin
//  Date: 13.01.2024
//
//  */

import UIKit

class GFAlertVC: UIViewController {
    let containerView = UIView()
    let titleLabel = GFTitleLabel(textAlignment: .center, fontSize: 20)
    let messageLabel = GFBodyLabel(textAlignment: .center)
    let actionButton = GFButton(backgroundColor:  .systemMint, title: "Ok")

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
}
