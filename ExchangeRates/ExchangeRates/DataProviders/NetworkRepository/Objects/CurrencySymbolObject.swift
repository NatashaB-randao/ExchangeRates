//
//  CurrencySymbolObject.swift
//  ExchangeRates
//
//  Created by Natasha Brandão on 14/09/23.
//

import Foundation

struct CurrencySymbolObject: Codable {
    var base: String?
    var success: Bool = false
    var symbols: SymbolObject?

}

typealias SymbolObject = [String: String]
