//
//  RateFluctuationModel.swift
//  ExchangeRates
//
//  Created by Natasha Brandão on 27/09/23.
//

import Foundation

struct RateFluctuationModel: Identifiable {
    let id = UUID()
    var symbol: String
    var change: Double
    var changePct: Double
    var endRate: Double
}
