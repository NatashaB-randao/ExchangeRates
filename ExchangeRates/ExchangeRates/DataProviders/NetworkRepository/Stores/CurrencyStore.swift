//
//  CurrencyStore.swift
//  ExchangeRates
//
//  Created by Natasha Brandão on 16/09/23.
//

import Foundation


protocol CurrencyStoreProtocol{
    func fetchSymbols() async throws -> CurrencySymbolObject
}

class CurrencyStore: CurrencyStoreProtocol {
    
    func fetchSymbols() async throws -> CurrencySymbolObject{
        guard let urlRequest = CurrencyRouter.symbols.asUrlRequest() else {
            let (data, response) = try await URLSession.shared.data(for: URLRequest)
            guard let symbols = try SymbolResult(data:)
        }
        request(urlRequest: urlRequest, completion: completion)
    }
}
