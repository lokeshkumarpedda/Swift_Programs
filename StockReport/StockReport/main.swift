//
//  main.swift
//  StockReport
//
//  Created by BridgeLabz on 13/07/16.
//  Copyright © 2016 BridgeLabz. All rights reserved.
//

// begin
import Foundation

let num : Int = Int (readLine()!)!
var totalValue = 0

for _ in 1...num{
    print("stock name :")
    let name : String = readLine()!
    print("Number of stock :")
    let number : Int = Int( readLine()!)!
    print("stock price :")
    let price : Int = Int(readLine()!)!
    
    let stockReport = Report()              //creating object for the Report class
    stockReport.setStockName(name)
    stockReport.setNumberOfStock(number)
    stockReport.setStockPrice(price)
    
    totalValue += stockReport.totalPrice()  //Finding total value of each stock
    
    //printing the stock report
    print("stock name :\(stockReport.stockName) Stock value :\(stockReport.totalPrice())")
    
}
print("Total value of Stock : \(totalValue)")

//end