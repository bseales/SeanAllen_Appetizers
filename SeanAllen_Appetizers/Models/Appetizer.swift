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
                                           imageURL: "https://www.seriouseats.com/thmb/Il7mv9ZSDh7n0cZz3t3V-28ImkQ=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/__opt__aboutcom__coeus__resources__content_migration__serious_eats__seriouseats.com__2018__04__20180309-french-fries-vicky-wasik-15-5a9844742c2446c7a7be9fbd41b6e27d.jpg",
                                           price: 4.99,
                                           calories: 500,
                                           carbs: 100,
                                           protein: 5)
    static let appetizers = [sampleAppetizer, sampleAppetizer, sampleAppetizer, sampleAppetizer]
}
