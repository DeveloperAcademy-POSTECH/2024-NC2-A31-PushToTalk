//
//  ChannelListView.swift
//  2024-NC2-A31-WhereAreYou
//
//  Created by Seoyeon Choi on 6/17/24.
//

import SwiftUI

struct ChannelListView: View {
    @State private var isPresented: Bool = false
    
    var body: some View {
        VStack {
            Button(action: {
                isPresented.toggle()
            }, label: {
                Image(.plusButton)
            })
            
            Text("ChannelListView")
        }
        .sheet(isPresented: $isPresented, content: {
            NewChannelView()
        })
    }
}

#Preview {
    ChannelListView()
}
