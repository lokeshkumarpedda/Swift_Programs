//
//  main.swift
//  Anagram
//
//  Created by BridgeLabz on 12/07/16.
//  Copyright © 2016 com.bridgeLabz. All rights reserved.
//

//begin
import Foundation

let stringOne = readLine()!
let stringTwo = readLine()!

//Taking a flag array and initializing with zeros
var array = [Int](count: stringTwo.characters.count, repeatedValue: 0)

if stringOne.characters.count == stringTwo.characters.count {
    var temp = 0
    for i in stringOne.characters{
        var c = 0
        for j in stringTwo.characters {
            if (i == j){
                if array[c] == 0{   // checking that particular character is visited or not
                    temp++
                    array[c] = 1    //changing the flag values as visited
                    break           //preventing from checking other characters
                }
            }
            c++
        }
    }
    if temp == stringOne.characters.count {
        print("Anagrams")
    }else{
        print("not Anagrams")
        }
}else{
    print("length must be same")
}
//end