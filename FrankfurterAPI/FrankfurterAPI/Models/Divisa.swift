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

