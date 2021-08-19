//
//  ContentView.swift
//  FBTestProject
//
//  Created by Muhammad Khan on 8/17/21.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject private var viewModel = UserViewModel()
    
    var body: some View {
        NavigationView {
            List(viewModel.users) { user in
                VStack(alignment: .leading) {
                    Text(user.firstName).font(.title)
                    Text(user.lastName).font(.subheadline)
                }
            }
            .navigationTitle("Users")
            .onAppear() {
                self.viewModel.fetchData()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
