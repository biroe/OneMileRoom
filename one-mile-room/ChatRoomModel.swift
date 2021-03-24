//
//  ChatRoomModel.swift
//  one-mile-room
//
//  Created by ryo fujimura on 3/24/21.
//

import Foundation
import Firebase

struct Chatroom: Codable, Identifiable {
    var id: String
    var title: String
    var joinCode:  Int
}

class ChatRoomModel: ObservableObject {
    @Published var Chatrooms = [Chatroom]()
    private let db = Firestore.firestore()
    private let user = Auth.auth().currentUser
}
