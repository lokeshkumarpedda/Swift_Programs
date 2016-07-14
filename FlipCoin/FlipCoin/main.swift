//
//  main.swift
//  FlipCoin
//
//  Created by BridgeLabz on 12/07/16.
//  Copyright © 2016 com.bridgeLabz. All rights reserved.
//

//begin
import Foundation
func flipcoin(num:Int)->(Float32,Float32){
    var heads=0,tails=0
    for _ in 1...num{
        //creating a random float between 0 to 1
        let rand:Float32 = Float32( Int(arc4random_uniform(10)))/10
        if rand < 0.5 {
            tails++
        }else{
            heads++
        }
    }
    //Finding heads and tails percentages
    let headsPercentage = Float32(heads*100/num)
    let tailsPercentage=Float32(tails*100/num)
    return (headsPercentage,tailsPercentage)
}


// Taking integer input
var number:Int=Int(readLine()!)!
if number > 0 {                 //checking for the positive number
    print("The Percentages of (Heads , Tails) is \(flipcoin(number))")
}

//end