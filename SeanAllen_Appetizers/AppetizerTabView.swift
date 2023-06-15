//
//  ContentView.swift
//  SeanAllen_Appetizers
//
//  Created by Batson Seales on 6/13/23.
//

import SwiftUI

struct AppetizerTabView: View {
    var body: some View {
        TabView {
            AppetizerListView().tabItem {
                Image(systemName: "house")
                Text("Home")
            }
            AccountView().tabItem {
                Image(systemName: "person")
                Text("Account")
            }
            OrderView().tabItem {
                Image(systemName: "bag")
                Text("Order")
            }
        }
        .tint(.brandPrimary)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        AppetizerTabView()
    }
}
