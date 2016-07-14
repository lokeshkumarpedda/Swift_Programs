//
//  main.swift
//  CouponNumbers
//
//  Created by BridgeLabz on 12/07/16.
//  Copyright © 2016 com.bridgeLabz. All rights reserved.
//

//begin
import Foundation

let num:Int = Int(readLine()!)!                     //Taking input
var array = [Int]()
var i = 1
let temp:UInt32 = UInt32(num) * 2
while(i<=num){
    i++
    var flag = 0
    let rand:Int = Int(arc4random_uniform(temp))      //creating random value
    for j in 0..<array.count{
        if array[j] == rand{
            flag++
        }
    }
    if flag == 0{
        array.append(rand)                  //non repeated values are appended to the array
    }else{
        i--
    }
}
print(array)
//end