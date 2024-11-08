//
//  ProductViewModel.swift
//  MVVM Products
//
//  Created by Muhammad Ahmed on 08/11/2024.
//

import Foundation


final class ProductViewModel{
    
    var products: [Product] = []
    var eventHandler: ((_ event: Event) -> Void)? // Data Binding Closure
    
    func fetchProducts(){
        self.eventHandler?(.loading)
        APIManager.shared.fetchProducts { response in
            self.eventHandler?(.stopLoading)
            switch response{
            case .success(let products):
                self.products = products
                self.eventHandler?(.dataLoaded)
            case .failure(let error):
                self.eventHandler?(.error(error))
                print(error)
            }
        }
    }
}

extension ProductViewModel {
    enum Event{
        case loading
        case stopLoading
        case dataLoaded
        case error(Error?)
    }
}
