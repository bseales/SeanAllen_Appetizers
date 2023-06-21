//
//  OrderView.swift
//  SeanAllen_Appetizers
//
//  Created by Batson Seales on 6/13/23.
//

import SwiftUI

struct OrderView: View {
    @EnvironmentObject var order: Order
    
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    List {
                        ForEach(order.items) { appetizer in
                            AppetizerListCell(appetizer: appetizer)
                        }
                        .onDelete(perform: order.deleteItems)
                    }
                    .listStyle(.plain)
                    
                    Button {
                        print("Order placed!")
                    } label: {
                        APButton(title: Text("$\(order.totalPrice, specifier: "%.2f") - Place Order"))
                    }.padding(.bottom, 25)
                }
                
                if order.items.isEmpty {
                    EmptyState(imageName: "empty-order",
                               message: "You have no items in your order.\nPlease add an appetizer!")
                }
            }
            .navigationTitle(Text("🧾 Orders"))
        }
    }
}

struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView()
    }
}
