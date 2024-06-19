//
//  ChannelDetailView.swift
//  2024-NC2-A31-WhereAreYou
//
//  Created by Seoyeon Choi on 6/17/24.
//

import SwiftUI

struct ChannelDetailView: View {
    @State private var isTapped: Bool = false
    
    var body: some View {
        VStack{
            Text("24 NC2 엡터눈")
                .font(.galmuri9_24)
                .foregroundStyle(.black)
                .padding(.top ,20)
            
            // 멤버 이름
            Rectangle()
                .foregroundStyle(.button)
                .frame(width: 360, height: 54)
                .cornerRadius(10)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.black, lineWidth: 2)
                        .overlay(alignment: .leading) {
                            Text("이민아 Dora")
                                .font(.galmuri9_18)
                                .foregroundStyle(.black)
                                .padding(.leading, 20)
                        }
                )
                .padding(.top)
            
            // 멤버 이름
            Rectangle()
                .foregroundStyle(.button)
                .frame(width: 360, height: 54)
                .cornerRadius(10)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.black, lineWidth: 2)
                        .overlay(alignment: .leading) {
                            Text("구리스")
                                .font(.galmuri9_18)
                                .foregroundStyle(.black)
                                .padding(.leading, 20)
                        }
                )
                .padding(.top, 10)
            
            // 멤버 이름
            Rectangle()
                .foregroundStyle(.button)
                .frame(width: 360, height: 54)
                .cornerRadius(10)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.black, lineWidth: 2)
                        .overlay(alignment: .leading) {
                            Text("린")
                                .font(.galmuri9_18)
                                .foregroundStyle(.black)
                                .padding(.leading, 20)
                        }
                )
                .padding(.top, 10)
            
            // 멤버 이름
            Rectangle()
                .foregroundStyle(.button)
                .frame(width: 360, height: 54)
                .cornerRadius(10)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.black, lineWidth: 2)
                        .overlay(alignment: .leading) {
                            Text("브리")
                                .font(.galmuri9_18)
                                .foregroundStyle(.black)
                                .padding(.leading, 20)
                        }
                )
                .padding(.top, 10)
            
            // 멤버 이름
            Rectangle()
                .foregroundStyle(.button)
                .frame(width: 360, height: 54)
                .cornerRadius(10)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.black, lineWidth: 2)
                        .overlay(alignment: .leading) {
                            Text("제로")
                                .font(.galmuri9_18)
                                .foregroundStyle(.black)
                                .padding(.leading, 20)
                        }
                )
                .padding(.top, 10)
            
            // 멤버 이름
            Rectangle()
                .foregroundStyle(.button)
                .frame(width: 360, height: 54)
                .cornerRadius(10)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.black, lineWidth: 2)
                        .overlay(alignment: .leading) {
                            Text("큐")
                                .font(.galmuri9_18)
                                .foregroundStyle(.black)
                                .padding(.leading, 20)
                        }
                )
                .padding(.top, 10)
            
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



#Preview {
    ChannelDetailView()
}
