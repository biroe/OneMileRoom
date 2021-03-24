//
//  ChatRoomView.swift
//  one-mile-room
//
//  Created by ryo fujimura on 3/23/21.
//

import SwiftUI

struct ChatRoomView: View {
    @State var newMessage = ""
    var body: some View {
        NavigationView{
            VStack{
                List{
                    ForEach((1...50), id: \.self) {
                            Text("Chat \($0)")
                        }
                }
                HStack {
                    TextField("Enter a message", text: $newMessage)
                    Text("Send")
                }
            }
            .navigationTitle("Chat Room")
        }
    }
}

struct ChatRoomView_Previews: PreviewProvider {
    static var previews: some View {
        ChatRoomView()
    }
}
