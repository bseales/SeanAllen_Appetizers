//
//  AppetizerListViewModel.swift
//  SeanAllen_Appetizers
//
//  Created by Batson Seales on 6/14/23.
//

import SwiftUI

final class AppetizerListViewModel: ObservableObject {
    @Published var appetizers: [Appetizer] = []
    
    func getAppetizers() {
        NetworkManager.shared.getAppetizers { result in
            DispatchQueue.main.async {
                switch result {
                case .success(let appetizers):
                    self.appetizers = appetizers
                    
                case .failure(let error):
                    print(error.localizedDescription)
                }
            }
            
        }
    }
}
