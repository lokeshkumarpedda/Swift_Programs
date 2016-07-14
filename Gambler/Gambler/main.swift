//
//  main.swift
//  Gambler
//
//  Created by BridgeLabz on 12/07/16.
//  Copyright © 2016 com.bridgeLabz. All rights reserved.
//

//begin
import Foundation

//Taking the input values

print("Enter stake")
var stake:Int=Int(readLine()!)!
print("Enter goal")
let goal:Int=Int(readLine()!)!
print("Enter number of times")
var number:Int=Int(readLine()!)!

var win:Int=0
let num = number

//calculating number of wins and loses

while (stake != goal && number > 0 && stake > 0){
    let rand = Int(arc4random_uniform(2))           //using random function
    if rand == 1 {
        win++
        stake++
    }else{
        stake--
    }
    number--
}

//Calculating win percentage

let winpercentage:Float32 = Float32(win * 100/(num - number))

print("Total number of wins are \(win)")
print("win percentage is \(winpercentage)")
print("Lose percentage is \(100 - winpercentage)")

//end