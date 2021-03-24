//
//  LoginView.swift
//  one-mile-room
//
//  Created by ryo fujimura on 3/23/21.
//

import SwiftUI

struct LoginView: View {
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        NavigationView{
            VStack {
                HStack{
                    TextField("Email", text: $email)
                    SecureField("Password", text: $password)
                }
                VStack {
                    HStack{
                        Button(action: {
                            //Sign-Up
                        }, label: {
                            Text("Sign up with apple")
                        })
                        Button(action: {
                            //Sign-Up
                        }, label: {
                            Text("Sign up with google")
                        })
                    }
                    HStack{
                        Button(action: {
                            //Sign-in
                        }, label: {
                            Text("Sign in with apple")
                        })
                        Button(action: {
                            //Sign-in
                        }, label: {
                            Text("Sign in with google")
                        })
                    }
                }
                
            }
            .navigationTitle("Sign in page")
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
