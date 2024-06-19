//
//  ChannelDetailView.swift
//  2024-NC2-A31-WhereAreYou
//
//  Created by Seoyeon Choi on 6/17/24.
//

import SwiftUI

struct ChannelDetailView: View {
    @State private var isTapped: Bool = false
    let channel: Channel
    
    var body: some View {
        ZStack {
            Color.white.ignoresSafeArea(.all)
            
            VStack{
                Text(channel.description)
                    .font(.galmuri9_24)
                    .foregroundStyle(.black)
                    .padding(.top ,20)
                
                ForEach(channel.members, id: \.self) { member in
                    Rectangle()
                        .foregroundStyle(.button)
                        .frame(width: 360, height: 54)
                        .cornerRadius(10)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.black, lineWidth: 2)
                                .overlay(alignment: .leading) {
                                    Text(member.name)
                                        .font(.galmuri9_18)
                                        .foregroundStyle(.black)
                                        .padding(.leading, 20)
                                }
                        )
                        .padding(.vertical, 5)
                }
                
                Spacer()
                
                Image(isTapped ? .talkButtonPress : .talkButton)
                    .padding(.bottom ,25)
                    .onTapGesture {
                        isTapped.toggle()
                    }
            }
            .navigationBarBackButtonHidden(true)
            .navigationBarItems(leading: MyBackButton(color: .pointBlue))
        }
    }
}



#Preview {
    ChannelDetailView(channel: channels[0])
}
