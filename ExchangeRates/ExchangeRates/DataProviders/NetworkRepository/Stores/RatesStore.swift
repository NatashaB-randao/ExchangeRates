//
//  RatesStore.swift
//  ExchangeRates
//
//  Created by Natasha Brandão on 16/09/23.
//


import Foundation

protocol RatesStoreProtocol: GenericStoreProtocol {
    func fetchFluctuation(by base: String, from symbols: [String], startDate: String, endDate: String, completion: @escaping completion<RateObject<RatesFluctuationObject>?>)
    func fetchTimeseries(by base: String, from symbol: String, startDate: String, endDate: String, completion: @escaping completion<RateObject<RatesHistoricalObject>?>)
}

class RatesStore: BaseStore, RatesStoreProtocol {
    
    func fetchFluctuation(by base: String, from symbols: [String], startDate: String, endDate: String) async throws -> RatesFluctuationObject {
        guard let urlRequest = try RatesRouter.fluctuatiion(base: base, symbols: symbols, startDate: startDate, endDate: endDate).asUrlRequest() else {
            throw error
        }
        
        let (data, response) = try await URLSession.shared.data(for: urlRequest)
        guard let rates = try RateResult<RatesFluctuationObject>(data: data, response: response).rates else {
            throw error
        }
        return rates
    }
    
    func fetchTimeseries(by base: String, from symbols: [String], startDate: String, endDate: String) async throws -> RatesHistoricalObject {
        guard let urlRequest = try RatesRouter.fluctuatiion(base: base, symbols: symbols, startDate: startDate, endDate: endDate).asUrlRequest() else {
            throw error
        }
        
        let (data, response) = try await URLSession.shared.data(for: urlRequest)
        guard let rates = try RateResult<RatesHistoricalObject>(data: data, response: response).rates else {
            throw error
        }
        return rates
        
    }
}
