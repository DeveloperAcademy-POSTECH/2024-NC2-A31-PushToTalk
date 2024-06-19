//
//  ChannelBlockView.swift
//  2024-NC2-A31-WhereAreYou
//
//  Created by Seoyeon Choi on 6/19/24.
//

import SwiftUI

struct ChannelBlockView: View {
    let channelName: String
    let memberCount: Int
    
    var body: some View {
        HStack {
            Text(channelName)
                .font(.galmuri9_20)
                .foregroundStyle(.black)
                .padding(.leading, 20)
            
            Text(String(memberCount))
                .font(.galmuri9_20)
                .foregroundStyle(.grayText)
            
            Spacer()
        }
        .frame(width: 360, height: 80)
        .background(.button)
        .clipShape(RoundedRectangle(cornerRadius: 15))
        .overlay {
            RoundedRectangle(cornerRadius: 15)
                .stroke(.black, lineWidth: 2)
        }
    }
}

#Preview {
    ChannelBlockView(channelName: "구블구블", memberCount: 3)
}
