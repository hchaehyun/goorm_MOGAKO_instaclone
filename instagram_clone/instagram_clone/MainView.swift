//
//  MainView.swift
//  instagram_clone
//
//  Created by 함채현 on 2023/08/04.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 0) {

            HStack {
                Image("profile_1")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 30, height: 30)
                    .cornerRadius(15)
                
                Text("Admin")
                    .font(.callout)
                    .fontWeight(.medium)
                    .foregroundColor(.primary)
                Spacer()
                Image(systemName: "ellipsis")
                    .font(.headline)
            }
            .padding(10)
            
            Image("sky_img")
                .resizable()
                .scaledToFit()
            
            HStack(alignment: .center, spacing: 20) {
                Image(systemName: "heart")
                Image(systemName: "bubble.middle.bottom")
                Image(systemName: "paperplane")
                Spacer()
            }
            .font(.title3)
            .padding(6)
            
            HStack {
                Text("Liked 1,108")
                Spacer(minLength: 0)
            }
            .padding(10)
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
