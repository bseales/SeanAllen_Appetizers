//
//  OrderView.swift
//  SeanAllen_Appetizers
//
//  Created by Batson Seales on 6/13/23.
//

import SwiftUI

struct OrderView: View {
    var body: some View {
        NavigationView {
            Text("Orders")
                .navigationTitle(Text("🧾 Orders"))
        }
    }
}

struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView()
    }
}
