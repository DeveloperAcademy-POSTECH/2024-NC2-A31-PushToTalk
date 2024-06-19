//
//  Channel.swift
//  2024-NC2-A31-WhereAreYou
//
//  Created by Seoyeon Choi on 6/19/24.
//

import Foundation

struct Channel: Hashable {
    var id: String
    var description: String
    var memberCount: Int
    var members: [Member]
}

struct Member: Hashable {
    var name: String
}

let channels: [Channel] = [Channel(id: "",
                                   description: "구블구블",
                                   memberCount: 2,
                                   members: [Member(name: "구리스"), Member(name: "블리시")]),
                           Channel(id: "",
                                   description: "💛MC1💛",
                                   memberCount: 6,
                                   members: [Member(name: "블리시"), Member(name: "유솔"), Member(name: "갱"), Member(name: "토피아"), Member(name: "디케이"), Member(name: "타이니")]),
                           Channel(id: "",
                                   description: "MC2 할무니팀👵🏻",
                                   memberCount: 7,
                                   members: [Member(name: "구리스"), Member(name: "토피아"), Member(name: "타이니"), Member(name: "무니"), Member(name: "루카스"), Member(name: "파이"), Member(name: "세이디")])]
