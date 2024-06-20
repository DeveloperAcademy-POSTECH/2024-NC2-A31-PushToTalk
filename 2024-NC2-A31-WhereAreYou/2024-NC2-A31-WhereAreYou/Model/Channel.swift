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

let channels: [Channel] = [Channel(id: "ED971403-305B-4343-92E6-910782FBE005",
                                   description: "구블구블💖",
                                   memberCount: 2,
                                   members: [Member(name: "구리스"), Member(name: "블리시")]),
                           Channel(id: "AD888665-C4C1-45E7-BE87-851AA1BFE681",
                                   description: "💛MC1💛",
                                   memberCount: 6,
                                   members: [Member(name: "블리시"), Member(name: "유솔"), Member(name: "갱"), Member(name: "토피아"), Member(name: "디케이"), Member(name: "타이니")]),
                           Channel(id: "043FEB29-A2B4-47DE-946C-DB064B2701E5",
                                   description: "MC2 할무니팀👵🏻",
                                   memberCount: 7,
                                   members: [Member(name: "구리스"), Member(name: "토피아"), Member(name: "타이니"), Member(name: "무니"), Member(name: "루카스"), Member(name: "파이"), Member(name: "세이디")]),
                           Channel(id: "62268F79-2CF2-4EFF-B5FA-B288B8FE4576",
                                   description: "우하항🥗🐰",
                                   memberCount: 2,
                                   members: [Member(name: "최서연"), Member(name: "")])
]
