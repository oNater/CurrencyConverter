//
//  CurrencyConverter.swift
//  CurrencyConverter
//
//  Created by user250623 on 2/16/24.
//

import Foundation
struct CurrencyConverter {
    static let usdToYenRate: Double = 115.0
    static let usdToPesosRate: Double = 20.0
    static let usdToEurosRate: Double = 0.9
    static let usdToPoundsRate: Double = 0.8

    func convert(dollars: Int) -> (yen: Double, pesos: Double, euros: Double, pounds: Double) {
        let yen = Double(dollars) * CurrencyConverter.usdToYenRate
        let pesos = Double(dollars) * CurrencyConverter.usdToPesosRate
        let euros = Double(dollars) * CurrencyConverter.usdToEurosRate
        let pounds = Double(dollars) * CurrencyConverter.usdToPoundsRate
        return (yen, pesos, euros, pounds)
    }
    
    func format(currencyValue: Double) -> String {
        return String(format: "%.2f", currencyValue)
    }
}
