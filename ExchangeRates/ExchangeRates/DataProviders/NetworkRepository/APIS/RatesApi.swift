//
//  RatesApi.swift
//  ExchangeRates
//
//  Created by Natasha Brandão on 13/09/23.
//

import Foundation

enum HttpMethod: String {
    case get = "GET"
}

struct RatesApi {
    static let baseUrl = "https://api.apilayer.com/exchangerates_data"
    static let apiKey = "NfgGMeZZRd5yroeT2lXtZanBEBIpRYMO"
    static let fluctuation = "/fluctuation"             //endpoint
    static let symbols = "/symbols"                     //endpoint
    static let timeseries = "/timeseries"               //endpoint
}
