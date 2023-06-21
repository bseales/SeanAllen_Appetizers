//
//  OrderView.swift
//  SeanAllen_Appetizers
//
//  Created by Batson Seales on 6/13/23.
//

import SwiftUI

struct OrderView: View {
    @State private var orderItems = MockData.orderItems
    
    var body: some View {
        NavigationView {
            VStack {
                List {
                    ForEach(orderItems) { appetizer in
                        AppetizerListCell(appetizer: appetizer)
                    }
                    .onDelete(perform: deleteItems)
                }
                .listStyle(.plain)
                
                Button {
                    print("Order placed!")
                } label: {
                    APButton(title: Text("$9.99 - Place Order"))
                }.padding(.bottom, 25)
            }
            .navigationTitle(Text("🧾 Orders"))
        }
    }
    
    func deleteItems(offset: IndexSet) {
        orderItems.remove(atOffsets: offset)
    }
}

struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView()
    }
}
