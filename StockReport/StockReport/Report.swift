//
//  Report.swift
//  StockReport
//
//  Created by BridgeLabz on 13/07/16.
//  Copyright © 2016 BridgeLabz. All rights reserved.
//

import Foundation
//Report class
class Report {
    var stockName = ""
    var numberOfStock = 0
    var stockPrice = 0
    
    func setStockName(name : String) -> String {
        stockName = name
        return stockName
    }
    
    func setNumberOfStock(number : Int) -> Int {
        numberOfStock = number
        return numberOfStock
    }
    
    func setStockPrice(number : Int) -> Int {
        stockPrice = number
        return stockPrice
    }
    
    func totalPrice() -> Int{
        let tot: Int = numberOfStock * stockPrice //finding stock value
        return tot
    }
}