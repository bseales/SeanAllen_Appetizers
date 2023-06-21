//
//  Order.swift
//  SeanAllen_Appetizers
//
//  Created by Batson Seales on 6/20/23.
//

import SwiftUI

final class Order: ObservableObject {
    @Published var items: [Appetizer] = []
    
    var totalPrice: Double {
        items.reduce(0) { $0 + $1.price }
    }
    
    func add(_ appetizer: Appetizer) {
        items.append(appetizer)
    }
    
    func deleteItems(offset: IndexSet) {
        items.remove(atOffsets: offset)
    }
}
