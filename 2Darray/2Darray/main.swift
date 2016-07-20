//
//  main.swift
//  2Darray
//
//  Created by BridgeLabz on 12/07/16.
//  Copyright © 2016 com.bridgeLabz. All rights reserved.
//

//begin
import Foundation

var arr = [[Int]]()                         //Creating 2D array

// Taking input about rows and columns
print("Number of rows")
let m: Int = Int(readLine()!)!
print("Number of columns")
let n: Int = Int(readLine()!)!

for _ in 0..<m{
    var row = [Int]()                       //creating individual rows
    for _ in 0..<n{
            row.append(Int(readLine()!)!)
    }
    arr.append(row)                         //appending each row in to the array
}
print(arr)

//end