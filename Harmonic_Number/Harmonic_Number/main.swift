//
//  main.swift
//  Harmonic_Number
//
//  Created by BridgeLabz on 12/07/16.
//  Copyright © 2016 com.bridgeLabz. All rights reserved.
//

//begin
import Foundation

let n:Int = Int(readLine()!)!   //Taking input
if n != 0{
    var temp :Float32=0.0       //Declaring and initializing float
    for i in 1...n{
        temp += 1/Float32(i)
        
    }
    print(temp)                 //printing the Harmonic number
}
//end