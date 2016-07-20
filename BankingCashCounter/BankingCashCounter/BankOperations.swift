//
//  BankOperations.swift
//  BankingCashCounter
//
//  Created by BridgeLabz on 18/07/16.
//  Copyright © 2016 BridgeLabz. All rights reserved.
//

import Foundation
class BankOperations {
    var cashBalance = 1000
    
    //creating two queue's
    let normalQueue = Queue()
    let extraQueue = Queue()    //if user requested more than we have in the bank
    
    //put all people in the queue
    
    func inputPanel(operation : String, cash : Int){
        normalQueue.enqueue(operation , cash: cash)
    }
    
    
    //Cash counter operations
    
    func counter() {
        while !normalQueue.isEmpty(){
            let (operation , cash) = normalQueue.dequeue()
            if operation == "deposit" {
                cashBalance += cash
                print("Deposited : \(cash)")
                print("cash balance :- \(cashBalance)")
                self.extra()        //prioritizing the extra queue
            }
            else if operation == "withdraw" {
                if cash <= cashBalance {
                    cashBalance -= cash
                    print("withdrawed: \(cash)")
                    print("cash balance :- \(cashBalance)")
                }
                else{
                    extraQueue.enqueue("withdraw", cash: cash)
                }
            }
        }
    }
    
    //extra queue
    
    func extra(){
        while !extraQueue.isEmpty() {
            if extraQueue.head.cash <= cashBalance {
                let (_,money) = extraQueue.dequeue()
                cashBalance -= money
                print("withdraw : \(money)")
                print("cash balance :- \(cashBalance)")
            }
            else{
                break
            }
        }
    }
}