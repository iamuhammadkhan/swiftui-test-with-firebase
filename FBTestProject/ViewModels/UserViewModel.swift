//
//  UserViewModel.swift
//  FBTestProject
//
//  Created by Muhammad Khan on 8/17/21.
//

import Foundation
import FirebaseFirestore

class UserViewModel: ObservableObject {
    
    @Published var users = [User]()

    func fetchData() {
        Firestore.firestore().collection("users").addSnapshotListener { snapshot, error in
            guard let documents = snapshot?.documents else {
                print("No Documents Found...")
                return
            }
            self.users = documents.map { (queryDocumentSnapshot) -> User in
                let data = queryDocumentSnapshot.data()
                let firstName = data["firstName"] as? String ?? ""
                let lastName = data["lastName"] as? String ?? ""
                return User(firstName: firstName, lastName: lastName)
            }
        }
    }
}
