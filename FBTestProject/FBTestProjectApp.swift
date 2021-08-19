//
//  FBTestProjectApp.swift
//  FBTestProject
//
//  Created by Muhammad Khan on 8/17/21.
//

import SwiftUI
import Firebase

@main
struct FBTestProjectApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
