//
//  ContentView.swift
//  one-mile-room
//
//  Created by ryo fujimura on 3/20/21.
//

import SwiftUI

struct ContentView: View {
    
    let BGColor = "red: 180 / 255, green: 180 / 255, blue: 180 / 255"
    
    var body: some View {
        ZStack {
            Color(BGColor)
                .ignoresSafeArea()

            Text("Hello, world!")
                .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
