//  /*
//
//  Projcet: GitHubFollowers
//  File: Date+Ext.swift
//  Created by: Elaidzha Shchukin
//  Date: 21.01.2024
//
//  */

import UIKit

extension Date {
    
    // Old way
    // func convertToMonthYearFormat() -> String {
    //        let dateFormatter = DateFormatter()
    //        dateFormatter.dateFormat = "MMM yyyy"
    //        return dateFormatter.string(from: self)
    //    }
    
    func convertToMonthYearFormat() -> String {
        return formatted(.dateTime.month().year())
    }
}
