//
//  main.swift
//  BubbleSort
//
//  Created by BridgeLabz on 13/07/16.
//  Copyright © 2016 BridgeLabz. All rights reserved.
//

//begin
import Foundation
print("How many elements do you want to enter :")
let numberOfElements : Int = Int(readLine()!)!
var integerArray = [Int]()
for i in 1...numberOfElements{
    let element = Int (readLine()!)!
    integerArray.append(element)                //making the array
}
var k : Int, j : Int = 0

//sorting the array by using bubble sort technique
while (j < integerArray.count ){
    k=1
    while (k < integerArray.count){
        if integerArray[k] < integerArray[k-1]{
            let temp = integerArray[k]
            integerArray[k] = integerArray[k-1]
            integerArray[k-1] = temp
        }
        k=k+1
    }
    j=j+1
}
//printing the sorted array
print (integerArray)


//end