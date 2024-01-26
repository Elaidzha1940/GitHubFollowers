//  /*
//
//  Project: GitHubFollowers
//  File: UITableView+Ext.swift
//  Created by: Elaidzha Shchukin
//  Date: 26.01.2024
//
//  */

import UIKit

extension UITableView {
    
    func removeExcessCells() {
        tableFooterView = UIView(frame: .zero)
    }
}
