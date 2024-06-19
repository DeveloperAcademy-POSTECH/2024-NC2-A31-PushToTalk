//
//  ChannelListView.swift
//  2024-NC2-A31-WhereAreYou
//
//  Created by Seoyeon Choi on 6/17/24.
//

import SwiftUI

struct ChannelListView: View {
    var body: some View {
        NavigationView{
            VStack{
                HStack {
                    Spacer()
                    
                    Text(StringLiterals.mainTitle)
                        .font(.galmuri7)
                        .padding(.leading, 40)
                    
                    Spacer()
                    
                    Image(systemName: "plus")
                        .fontWeight(.bold)
                        .padding(.trailing, 15)
                }
                .padding(.top,20)
                
                // 각 채널 명 [구블구블💖]
                Rectangle()
                    .foregroundStyle(.button)
                    .frame(width: 360, height: 80)
                    .cornerRadius(15)
                    .overlay(
                        RoundedRectangle(cornerRadius: 15)
                            .stroke(Color.black, lineWidth: 2)
                            .overlay(alignment: .leading) {
                                HStack{
                                    Text("구블구블💖")
                                        .font(.galmuri9)
                                        .padding(.leading, 20)
                                    Text("2")
                                        .font(.galmuri9)
                                        .foregroundStyle(.gray)
                                }
                            }
                    )
                    .padding(.top)
                
                // 각 채널 명 [24 NC2 엡터눈]
                NavigationLink(destination: ChannelDetailView()){
                    Rectangle()
                        .foregroundStyle(.button)
                        .frame(width: 360, height: 80)
                        .cornerRadius(15)
                        .overlay(
                            RoundedRectangle(cornerRadius: 15)
                                .stroke(Color.black, lineWidth: 2)
                                .overlay(alignment: .leading) {
                                    HStack{
                                        Text("24 NC2 엡터눈")
                                            .font(.galmuri9)
                                            .foregroundStyle(.black)
                                            .padding(.leading, 20)
                                        Text("7")
                                            .font(.galmuri9)
                                            .foregroundStyle(.gray)
                                    }
                                }
                        )
                        .padding(.top, 10)
                }
                
                // 각 채널 명 [💻블렌더로 아이콘만들기]
                Rectangle()
                    .foregroundStyle(.button)
                    .frame(width: 360, height: 80)
                    .cornerRadius(15)
                    .overlay(
                        RoundedRectangle(cornerRadius: 15)
                            .stroke(Color.black, lineWidth: 2)
                            .overlay(alignment: .leading) {
                                HStack{
                                    Text("💻블렌더로 아이콘만들기")
                                        .font(.galmuri9)
                                        .padding(.leading, 20)
                                    Text("8")
                                        .font(.galmuri9)
                                        .foregroundStyle(.gray)
                                }
                            }
                    )
                    .padding(.top, 10)
                
                // 각 채널 명 [🎾테니스🎾]
                Rectangle()
                    .foregroundStyle(.button)
                    .frame(width: 360, height: 80)
                    .cornerRadius(15)
                    .overlay(
                        RoundedRectangle(cornerRadius: 15)
                            .stroke(Color.black, lineWidth: 2)
                            .overlay(alignment: .leading) {
                                HStack{
                                    Text("🎾테니스🎾")
                                        .font(.galmuri9)
                                        .padding(.leading, 20)
                                    Text("4")
                                        .font(.galmuri9)
                                        .foregroundStyle(.gray)
                                }
                            }
                    )
                    .padding(.top, 10)
                
                
                Spacer()
                
            }
        }
    }
}

struct MyBackButton: View {
    @Environment(\.presentationMode) var presentationMode
    var color: Color
    var body: some View {
        Button(action: {
            // 백 버튼 동작 정의
            presentationMode.wrappedValue.dismiss()
        }) {
            HStack {
                Image(systemName: "chevron.left") // 기본 백 버튼 아이콘
                    .foregroundColor(color) // 아이콘 색상 변경
            }
        }
    }
}


#Preview {
    ChannelListView()
}
