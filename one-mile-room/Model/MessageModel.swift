//
//  MessageModel.swift
//  one-mile-room
//
//  Created by ryo fujimura on 3/24/21.
//

import SwiftUI
import FirebaseFirestoreSwift

//for onchanege...
struct MessageModel: Codable, Identifiable, Hashable {
    @DocumentID var id: String?
    var message: String
    var user: String
    var timeStamp: Data
    
    enum CodingKeys: String, CodingKey {
        case id
        case message
        case user
        case timeStamp
    }
    
}
