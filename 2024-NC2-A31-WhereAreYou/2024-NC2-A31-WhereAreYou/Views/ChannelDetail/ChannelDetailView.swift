//
//  ChannelDetailView.swift
//  2024-NC2-A31-WhereAreYou
//
//  Created by Seoyeon Choi on 6/17/24.
//

import SwiftUI

struct ChannelDetailView: View {
    @ObservedObject var channelManagerWrapper = ChannelManagerWrapper()
    @State private var isTapped: Bool = false
    let channel: Channel
    
    @GestureState private var isDetectingLongPress = false
    
    /// Long Press Gesture
    var longPress: some Gesture {
        LongPressGesture(minimumDuration: 3)
            .updating($isDetectingLongPress) { currentState, gestureState,
                transaction in
                gestureState = currentState
                transaction.animation = Animation.easeIn(duration: 0.1)
            }
    }
    
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
                
                Image(self.isDetectingLongPress ? .talkButtonPress : .talkButton)
                    .padding(.bottom ,25)
                    .gesture(longPress)
            }
            .navigationBarBackButtonHidden(true)
            .navigationBarItems(leading: MyBackButton(color: .pointBlue))
        }
        .onAppear {
            channelManagerWrapper.joinChannel(channelUUID: UUID(uuidString: channel.id)!,
                                              description: channel.description)
        }
    }
}



#Preview {
    ChannelDetailView(channel: channels[0])
}
