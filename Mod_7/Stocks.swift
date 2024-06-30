//
//  Stocks.swift
//  Mod_7
//
//  Created by Jeff Kohl on 6/30/24.
//

import Foundation

struct Stocks {
    var ticker: String
    var price: Double
    
    init(_ ticker: String, _ price: Double) {
        self.ticker = ticker
        self.price = price
    }
    
}
