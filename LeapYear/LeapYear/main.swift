//
//  main.swift
//  LeapYear
//
//  Created by BridgeLabz on 12/07/16.
//  Copyright © 2016 com.bridgeLabz. All rights reserved.
//
//begin
import Foundation
func leapyear(year:Int) ->Bool{
    //Finding leap year or not
    if ((year%4==0) || (year%400==0) && (year%100 != 0)){
        return true
        }
    else{
        return false
    }
    
}
//Taking input
let temp:String = readLine()!
let length:Int = temp.characters.count
let year:Int=Int(temp)!
if (length==4){                     //checking length is equal to 4
    if leapyear(year){
        print("\(year) is a leap year")
    }else{
        print("\(year) is not a leap year")
    }
}

//end

