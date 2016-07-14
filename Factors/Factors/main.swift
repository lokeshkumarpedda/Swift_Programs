//
//  main.swift
//  Factors
//
//  Created by BridgeLabz on 12/07/16.
//  Copyright © 2016 com.bridgeLabz. All rights reserved.
//

//begin
import Foundation
func factors(var number:Int) ->(){
    var i = 2
    //Finding the prime factor
    while (i * i <= number){
        while (number % i == 0){
            print(i)
            number = number/i
        }
        i++
    }
    if number > 1{
        print(number)
    }
}
//Taking the input
let number:Int = Int(readLine()!)!
factors(number)

//end