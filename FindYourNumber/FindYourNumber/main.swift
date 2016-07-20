//
//  main.swift
//  FindYourNumber
//
//  Created by BridgeLabz on 13/07/16.
//  Copyright © 2016 BridgeLabz. All rights reserved.
//

//begin
import Foundation
var arr = [Int]()

//Recursive binary search method

func binarySearch(start: Int , end : Int) -> (Int,Bool){
    let middle = start + (end - start)/2
    print("\n\t\(middle) is your number press 1 ")
    print("\t\(middle) greater than your number press 2")
    print("\t\(middle) less than your number press 3")
    let num = Int(readLine()!)!
    arr.append(middle)
    if num == 1{
        return (middle,true)
    }
    else if num == 2 {
        return binarySearch(start, end: middle-1)
    }
    else if num == 3{
        return binarySearch(middle+1, end: end)
    }
    else{
        print("Invalid choice")
        return binarySearch(start, end: end)
    }
}

print("Enter :")
let N = Int (readLine()!)!
print("Guess a number between 0 to \(N-1)")         //asking to guess a number
let (num,flag) = binarySearch(0, end: N)
print(arr)
if flag{
    print("\(num) is your number")                  //printing the guessed number
}
//end