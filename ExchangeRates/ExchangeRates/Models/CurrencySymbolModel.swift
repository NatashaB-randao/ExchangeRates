//
//  CurrencySymbolModel.swift
//  ExchangeRates
//
//  Created by Natasha Brandão on 27/09/23.
//

import Foundation

struct CurrencySymbolModel: Identifiable {
    let id = UUID()
    var symbol: String
    var fullName: String
}
