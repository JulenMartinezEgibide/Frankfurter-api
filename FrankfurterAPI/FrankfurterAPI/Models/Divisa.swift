//
//  Product.swift
//  onlineShop
//
//  Created by  on 5/2/24.
//

import Foundation

struct Divisa: Hashable, Codable, Identifiable {
    let id = UUID().uuidString
    var amount: Double
    var base: String
    var date: String
    var rates: Rates
}

struct Rates: Hashable, Codable {
    var AUD:Double
    var BGN:Double
    var BRL:Double
    var CAD:Double
    var CHF:Double
    var CNY:Double
    var CZK:Double
    var DKK:Double
    var GBP:Double
    var HKD:Double
    var HUF:Double
    var IDR:Double
    var ILS:Double
    var INR:Double
    var ISK:Double
    var JPY:Double
    var KRW:Double
    var MXN:Double
    var MYR:Double
    var NOK:Double
    var NZD:Double
    var PHP:Double
    var PLN:Double
    var RON:Double
    var SEK:Double
    var SGD:Double
    var THB:Double
    var TRY:Double
    var USD:Double
    var ZAR:Double
}

struct Mockdata {
    static let divisa = Divisa(amount: 1.0, base: "EUR", date: "2024-03-14", rates: Rates(AUD: 1.6529, BGN: 1.9558, BRL: 5.4237, CAD: 1.4725, CHF: 0.9616, CNY: 7.8564, CZK: 25.198, DKK: 7.4568, GBP: 0.8542, HKD: 8.5455, HUF: 394.9, IDR: 17041, ILS: 3.9682, INR: 90.52, ISK: 148.5, JPY: 161.7, KRW: 1441.24, MXN: 18.2308, MYR: 5.1195, NOK: 11.467, NZD: 1.7748, PHP: 60.503, PLN: 4.2935, RON: 4.971, SEK: 11.2245, SGD: 1.4567, THB: 39.002, TRY: 35.095, USD: 1.0925, ZAR: 20.366))
}
