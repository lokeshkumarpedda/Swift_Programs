//
//  main.swift
//  BankingCashCounter
//
//  Created by BridgeLabz on 18/07/16.
//  Copyright © 2016 BridgeLabz. All rights reserved.
//

//begin
import Foundation
let bank = BankOperations()

//Taking user input for Deposit and withdraw

while true {
    print("\n\t Press 1 : If you want to Deposit\n\t Press 2 : If you want to Withdraw\n\t Press 0: Exit")
    let choice = Int(readLine()!)!
    if choice == 1 {
        print("\n\tHow much do you want to deposit :")
        let cash = Int(readLine()!)!
        bank.inputPanel("deposit", cash: cash)  //adding to the main queue
    }
    else if choice == 2{
        print("\n\tHow much do you want to withdraw :")
        let cash = Int(readLine()!)!
        bank.inputPanel("withdraw",cash: cash)  //adding to the main queue
    }
    else if choice == 0{
        break
    }
    else{
        print("Invalid choice")
    }
}
print("\n\toperations at the cash counter\n")
bank.counter()
//end