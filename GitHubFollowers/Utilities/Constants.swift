//  /*
//
//  Project: GitHubFollowers
//  File: Constants.swift
//  Created by: Elaidzha Shchukin
//  Date: 19.01.2024
//
//  */

import UIKit

enum SFSymbols {
    static let location = "mappin.and.ellipse"
    static let repos = "folder.fill"
    static let gists = "text.alignleft"
    static let followers = "heart.fill"
    static let following = "person.2.fill"
}

enum ScreenSize {
    static let width      = UIScreen.main.bounds.size.width
    static let height     = UIScreen.main.bounds.size.height
    static let maxLength  = max(ScreenSize.width, ScreenSize.height)
    static let minLength  = min(ScreenSize.width, ScreenSize.height)
}

enum DeviceTypes {
    static let idiom                  = UIDevice.current.userInterfaceIdiom
    static let nativeScale            = UIScreen.main.nativeScale
    static let scale                  = UIScreen.main.scale
    
    static let isiPhoneSE             = idiom == .phone && ScreenSize.maxLength == 568.0
    static let isiPhone8Standard      = idiom == .phone && ScreenSize.maxLength == 667.0 && nativeScale == scale
    static let isiPhone8Zoomed        = idiom == .phone && ScreenSize.maxLength == 667.0 && nativeScale > scale
    static let isiPhone8PlusStandard  = idiom == .phone && ScreenSize.maxLength == 736.0
    static let isiPhone8PlusZoomed    = idiom == .phone && ScreenSize.maxLength == 736.0 && nativeScale < scale
    static let isiPhoneX              = idiom == .phone && ScreenSize.maxLength == 812.0
    static let isiPhoneXsMaxAndXr     = idiom == .phone && ScreenSize.maxLength == 896.0
    static let isiPad                 = idiom == .pad && ScreenSize.maxLength >= 1024.0
    
    static func isiPhoneXAspectRatio() -> Bool {
        return isiPhoneX || isiPhoneXsMaxAndXr
    }
}
