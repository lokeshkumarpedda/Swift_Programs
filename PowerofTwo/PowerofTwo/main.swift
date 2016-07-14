//
//  main.swift
//  PowerofTwo
//
//  Created by BridgeLabz on 12/07/16.
//  Copyright © 2016 com.bridgeLabz. All rights reserved.
//

// begin
import Foundation

func power(val:Int) ->Int{      //function for calculating 2^N value
    if val == 0{
        return 1
    }
    else{
        var mul=1
        for _ in 1...val{
            mul *= 2
        }
        return mul
    }
}
//Taking input
let n:Int=Int(readLine()!)!
if n>=0 && n<31 {
    for i in 0...n{
        print(power(i))
    }
}
else{
    print("it overflows the int")   //showing the error message
}
//end
