//
//  main.swift
//  InsertionSort
//
//  Created by BridgeLabz on 13/07/16.
//  Copyright © 2016 BridgeLabz. All rights reserved.
//

//begin
import Foundation
print("How many elements do you want to enter :")
let numberOfElements : Int = Int(readLine()!)!
var stringArray = [String]()
for i in 1...numberOfElements{
    let element = readLine()!
    stringArray.append(element)                //making the array
}
var k : Int, j : Int = 0

//sorting the array by using insertion sort technique
while (j < stringArray.count ){
    k=j
    while (k < stringArray.count){
        if stringArray[j] > stringArray[k]{
            let temp = stringArray[j]
            stringArray[j] = stringArray[k]
            stringArray[k] = temp
        }
        k=k+1
    }
    j=j+1
}
//printing the sorted array
print (stringArray)


//end