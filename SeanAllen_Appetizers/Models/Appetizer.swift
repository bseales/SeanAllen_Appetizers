//
//  Appetizer.swift
//  SeanAllen_Appetizers
//
//  Created by Batson Seales on 6/13/23.
//

import Foundation

struct Appetizer: Decodable, Identifiable {
    let id: Int
    let name: String
    let description: String
    let imageURL: String
    let price: Double
    let calories: Int
    let carbs: Int
    let protein: Int
}

struct AppetizerResponse: Decodable {
    let request: [Appetizer]
}

struct MockData {
    static let sampleAppetizer = Appetizer(id: 1,
                                           name: "French Fries",
                                           description: "A plate of delicious French Fries. Optionally served with melted cheese.",
                                           imageURL: "",
                                           price: 4.99,
                                           calories: 500,
                                           carbs: 100,
                                           protein: 5)
    static let appetizers = [sampleAppetizer, sampleAppetizer, sampleAppetizer, sampleAppetizer]
    
    static let orderItemOne = Appetizer(id: 1,
                                           name: "French Fries 1",
                                           description: "A plate of delicious French Fries. Optionally served with melted cheese.",
                                           imageURL: "",
                                           price: 4.99,
                                           calories: 500,
                                           carbs: 100,
                                           protein: 5)
    static let orderItemTwo = Appetizer(id: 2,
                                           name: "French Fries 2",
                                           description: "A plate of delicious French Fries. Optionally served with melted cheese.",
                                           imageURL: "",
                                           price: 4.99,
                                           calories: 500,
                                           carbs: 100,
                                           protein: 5)
    static let orderItemThree = Appetizer(id: 3,
                                           name: "French Fries 3",
                                           description: "A plate of delicious French Fries. Optionally served with melted cheese.",
                                           imageURL: "",
                                           price: 4.99,
                                           calories: 500,
                                           carbs: 100,
                                           protein: 5)
    static let orderItems = [orderItemOne, orderItemTwo, orderItemThree]
}
