//
//  CurrencyStore.swift
//  ExchangeRates
//
//  Created by Natasha Brandão on 16/09/23.
//

import Foundation

protocol CurrencyStoreProtocol: GenericStoreProtocol {
    func fetchSymbols(completion: @escaping completion<CurrencySymbolObject?>)
}

class CurrencyStore: GenericStoreRequest, CurrencyStoreProtocol {
    
    func fetchSymbols(completion: @escaping completion<CurrencySymbolObject?>) {
        guard let urlRequest = CurrencyRouter.symbols.asUrlRequest() else {
            return completion(nil, error)
        }
        request(urlRequest: urlRequest, completion: completion)
    }
}
