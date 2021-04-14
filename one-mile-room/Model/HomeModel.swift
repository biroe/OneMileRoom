//
//  HomeModel.swift
//  one-mile-room
//
//  Created by ryo fujimura on 3/24/21.
//

import SwiftUI
import Firebase

class HomeModel: ObservableObject {
    @Published var messages:[MessageModel] = []
    @AppStorage("current_user") var user = ""
    let ref = Firestore.firestore()
    
    init() {
        readAllMessages()
    }
    
    func onAppear(){
        //checking if user joined
        if user == ""{
            //join alert
            UIApplication.shared.windows.first?.rootViewController?.present(alertView(), animated: true)
        }
    }
    
    func alertView() -> UIAlertController {
        let alert = UIAlertController(title: "Join Chat", message: "Enter a nickname", preferredStyle: .alert)
        alert.addTextField{
            (txt) in
            txt.placeholder = "eg nickname"
        }
        let join = UIAlertAction(title: "Join", style: .default) {
            (_) in
            //Checking if empty
            let user = alert.textFields![0].text ?? ""
            if user != "" {
                self.user = user
                return
            }
            //reprompting alert view
            UIApplication.shared.windows.first?.rootViewController?.present(alert, animated: true)
        }
        alert.addAction(join)
        
        return alert
    }
    
    func readAllMessages() {
        ref.collection("Messages").addSnapshotListener{
            (snap, err) in
            if err != nil {
                print(err!.localizedDescription)
                return
            }
            guard let data = snap else{return}
            data.documentChanges.forEach {
                (doc) in
                //adding data when added
                if doc.type == .added {
                    let message = try! doc.document.data(as: MessageModel.self)!
                    DispatchQueue.main.async {
                        self.messages.append(message)
                    }
                }
            }
        }
    }
}
