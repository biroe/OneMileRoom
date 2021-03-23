//
//  ChatRoom.swift
//  one-mile-room
//
//  Created by ryo fujimura on 3/21/21.
//

import SwiftUI

struct ChatRoom: View {
    var body: some View {
        ZStack {
            Color(.gray)
                .ignoresSafeArea()

            VStack{//home
                HStack{//navibar
                    Text("Menu")
                    Spacer()
                    Text("Search")
                    Text("People")
                }
                Spacer()
                HStack{//main
                    ScrollView{
                        VStack{//Chat
                            ForEach((1...10), id: \.self) {
                                    Text("\($0)Messages")
                                }
                        }
                    }
                    ScrollView{
                        VStack{//Chat
                            ForEach((1...10), id: \.self) {
                                    Text("\($0) Images")
                                }
                        }
                    }
                }
                Spacer()
                HStack{//type and send
                    Text("TypeSomethingHere")
                    Text("Send")
                }
            }
        }
    }
}

struct ChatRoom_Previews: PreviewProvider {
    static var previews: some View {
        ChatRoom()
    }
}
