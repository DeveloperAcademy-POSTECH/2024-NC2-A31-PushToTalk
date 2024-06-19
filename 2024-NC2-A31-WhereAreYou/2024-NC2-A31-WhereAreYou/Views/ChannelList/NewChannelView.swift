//
//  NewChannelView.swift
//  2024-NC2-A31-WhereAreYou
//
//  Created by Seoyeon Choi on 6/17/24.
//

import SwiftUI

struct NewChannelView: View {
    @State private var channelNameText: String = ""
    
    var body: some View {
        NavigationStack {
            ZStack(alignment: .top) {
                Color.modalBackground
                    .ignoresSafeArea(.all)
                
                Rectangle()
                    .frame(height: 2)
                
                VStack {
                    TextField(StringLiterals.Modal.channelName, text: $channelNameText)
                        .padding()
                        .font(.galmuri9_18)
                        .background(.button)
                        .overlay {
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(.black, lineWidth: 2)
                        }
                    
                    Button(action: {
                        
                    }, label: {
                        HStack {
                            Image(.plusButton)
                                .padding(.leading, 20)
                            
                            Text(StringLiterals.Modal.addContacts)
                                .padding(.leading, 10)
                                .padding(.vertical, 16)
                                .font(.galmuri9_18)
                                .foregroundStyle(.grayText)
                            
                            Spacer()
                        }
                        .background(.button)
                        .overlay {
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(.black, lineWidth: 2)
                        }
                    })
                    .padding(.top, 50)
                }
                .padding(.top, 40)
                .padding(.horizontal, 16)
            }
            .navigationTitle(StringLiterals.Modal.title)
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button {
                        
                    } label: {
                        Text(StringLiterals.Modal.cancel)
                            .fontWeight(.medium)
                            .font(.system(size: 16))
                            .foregroundStyle(.pointBlue)
                    }
                }
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        
                    } label: {
                        Text(StringLiterals.Modal.save)
                            .fontWeight(.medium)
                            .font(.system(size: 16))
                            .foregroundStyle(.pointBlue)
                    }
                }
            }
        }
    }
}

#Preview {
    NewChannelView()
}
