//
//  main.swift
//  PalindromeChecker
//
//  Created by BridgeLabz on 15/07/16.
//  Copyright © 2016 BridgeLabz. All rights reserved.
//

//begin
import Foundation
let deque = Deque()

//checking for palindrome or not
func Palindrome() -> Bool {
    while (!deque.isEmpty()){
        if deque.removeRear() != deque.removeFront(){
            return false
        }
    }
    return true
}

let word = readLine()!
for i in word.characters{
    deque.addRear(i)               //Adding characters to Deque
}

print(Palindrome())                 //printing palindrome or not
//end