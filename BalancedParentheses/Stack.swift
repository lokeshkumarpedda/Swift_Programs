//
//  Stack.swift
//  BalancedParentheses
//
//  Created by BridgeLabz on 13/07/16.
//  Copyright © 2016 BridgeLabz. All rights reserved.
//

import Foundation

//creating stack class
class Stack {
    var arrayStack = [String]()         //creating array
    
    func push(element : String){
        arrayStack.append(element)      //appending into the array
    }
    func pop() -> Bool{
        if isEmpty() == false {
            arrayStack.removeLast()     //removing last element from the array
            return true
        }else{
            return false
        }
    }
    func isEmpty() -> Bool{
    
        if (size() == 0){
            return true
        }
        else{
            return false
        }
    }
    func size() -> Int {
        return arrayStack.count         //returing size of the array
    }
}