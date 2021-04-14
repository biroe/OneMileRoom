//
//  ContentView.swift
//  OneMileRoom
//
//  Created by ryo fujimura on 3/24/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color("lightt")
                    .ignoresSafeArea()
                VStack {
                    Text("Search bar")
                    Spacer()
                    Form {
                        ForEach((1...100), id: \.self) {
                                Text("HEllo \($0)")
                            }
                    }
                    Spacer()
                    Text("Textentry")
                    Spacer()
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
