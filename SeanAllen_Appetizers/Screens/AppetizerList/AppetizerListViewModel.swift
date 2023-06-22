//
//  AppetizerListViewModel.swift
//  SeanAllen_Appetizers
//
//  Created by Batson Seales on 6/14/23.
//

import SwiftUI

@MainActor final class AppetizerListViewModel: ObservableObject {
    @Published var appetizers: [Appetizer] = []
    @Published var alertItem: AlertItem?
    @Published var isLoading = false
    @Published var isShowingDetail = false
    @Published var selectedAppetizer: Appetizer?
    
    func getAppetizers() {
        isLoading = true
        
        Task {
            do {
                appetizers = try await NetworkManager.shared.getAppetizers()
                isLoading = false
            } catch {
                if let apError = error as? APError {
                    switch apError {
                    case .invalidUrl:
                        alertItem = AlertContext.invalidUrl
                    case .invalidResponse:
                        alertItem = AlertContext.invalidResponse
                    case .invalidData:
                        alertItem = AlertContext.invalidData
                    case .unableToComplete:
                        alertItem = AlertContext.unableToComplete
                    }
                } else {
                    alertItem = AlertContext.invalidResponse
                }
                
                isLoading = false
            }
        }
        
//        NetworkManager.shared.getAppetizers { result in
//            DispatchQueue.main.async { [weak self] in
//                guard let self = self else {
//                    return
//                }
//
//                isLoading = false
//
//                switch result {
//                case .success(let appetizers):
//                    self.appetizers = appetizers
//
//                case .failure(let error):
//                    switch error {
//                    case .invalidUrl:
//                        alertItem = AlertContext.invalidUrl
//
//                    case .invalidResponse:
//                        alertItem = AlertContext.invalidResponse
//
//                    case .invalidData:
//                        alertItem = AlertContext.invalidData
//
//                    case .unableToComplete:
//                        alertItem = AlertContext.unableToComplete
//                    }
//                }
//            }
//
//        }
    }
}
