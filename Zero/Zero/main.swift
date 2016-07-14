//
//  main.swift
//  Zero
//
//  Created by BridgeLabz on 12/07/16.
//  Copyright © 2016 com.bridgeLabz. All rights reserved.
//

//begin
import Foundation

let n: Int = Int(readLine()!)!                  //Taking the integer input
var arr = [Int]()
for _ in 0..<n{
    arr.append(Int(readLine()!)!)               //Taking the array input
}
var c = 0
for i in 0..<n{
    for j in (i+1)..<n{
        for k in (j+1)..<n{
            let sum = arr[i] + arr[j] + arr[k]
            if sum == 0{                        //checking the triples sum
                c++
                print(arr[i],arr[j],arr[k])
            }
        }
    }
}
// printing number of triples
print("Total number of triples that sum equal to zero = \(c)")

//end