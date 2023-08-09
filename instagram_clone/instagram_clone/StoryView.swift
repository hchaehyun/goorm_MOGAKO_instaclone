//
//  StoryView.swift
//  instagram_clone
//
//  Created by 함채현 on 2023/08/04.
//

import SwiftUI

struct StoryView: View {
    var body: some View {
        
        VStack {
            // 이 부분 컴포넌트로 만들기
            Image("instagram_story")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 90)
                .clipShape(Circle())
            Text("user")
        }
        .padding(8)
    }
}

struct StoryView_Previews: PreviewProvider {
    static var previews: some View {
        StoryView()
    }
}
