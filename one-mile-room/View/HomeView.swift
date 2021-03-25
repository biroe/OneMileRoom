//
//  HomeView.swift
//  one-mile-room
//
//  Created by ryo fujimura on 3/24/21.
//

import SwiftUI

struct HomeView: View {
    @StateObject var homeData = HomeModel()
    @AppStorage("current_user") var user = ""
    
    var body: some View {
        VStack{
            ScrollView {
                ForEach(homeData.messages) {
                    message in
                    Text(message.message)
                }
            }
        }
        .onAppear(perform: {
            homeData.onAppear()
        })
    }
}
