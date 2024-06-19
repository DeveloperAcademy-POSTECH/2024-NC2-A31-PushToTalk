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
        NavigationStack {
            ZStack {
                Color.white.ignoresSafeArea(.all)
                
                VStack {
                    HStack {
                        Spacer()
                        
                        Text(StringLiterals.mainTitle)
                            .font(.galmuri7)
                            .padding(.leading, 40)
                            .foregroundStyle(.black)
                        
                        Spacer()
                        
                        Button(action: {
                            isPresented.toggle()
                        }, label: {
                            Image(systemName: "plus")
                                .fontWeight(.bold)
                                .foregroundStyle(.pointBlue)
                        })
                        .padding(.trailing, 20)
                    }
                    .padding(.top, 20)
                    
                    /// 채널 리스트
                    ChannelBlockView(channelName: "구블구블", memberCount: 2)
                        .padding(.vertical, 5)
                    ChannelBlockView(channelName: "구블구블", memberCount: 2)
                        .padding(.vertical, 5)
                    ChannelBlockView(channelName: "구블구블", memberCount: 2)
                        .padding(.vertical, 5)
                    ChannelBlockView(channelName: "구블구블", memberCount: 2)
                        .padding(.vertical, 5)
                    ChannelBlockView(channelName: "구블구블", memberCount: 2)
                        .padding(.vertical, 5)
                    
                    Spacer()
                }
                .sheet(isPresented: $isPresented, content: {
                    NewChannelView(isPresented: $isPresented)
                })
            }
        }
    }
}

struct MyBackButton: View {
    @Environment(\.presentationMode) var presentationMode
    var color: Color
    var body: some View {
        Button(action: {
            presentationMode.wrappedValue.dismiss()
        }) {
            HStack {
                Image(systemName: "chevron.left")
                    .foregroundColor(color)
            }
        }
    }
}


#Preview {
    ChannelListView()
}
