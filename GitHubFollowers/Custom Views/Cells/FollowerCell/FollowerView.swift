//  /*
//
//  Project: GitHubFollowers
//  File: FollowerView.swift
//  Created by: Elaidzha Shchukin
//  Date: 29.01.2024
//
//  */

import SwiftUI

struct FollowerView: View {
    var follower: Follower
    
    var body: some View {
        
        VStack {
            AsyncImage(url: URL(string: follower.avatarUrl)) { image in
                image
                    .resizable()
                    .scaledToFit()
            } placeholder: {
                Image(.avatarPlaceholder)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
            }
            .clipShape(Circle())
            
            Text(follower.login)
                .font(.system(size: 20, weight: .semibold, design: .rounded))
                .lineLimit(1)
                .minimumScaleFactor(0.6)
        }
    }
}

#Preview {
    FollowerView(follower: Follower(login: "Eli", avatarUrl: ""))
}
