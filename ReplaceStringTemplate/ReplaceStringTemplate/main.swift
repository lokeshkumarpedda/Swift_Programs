//
//  main.swift
//  ReplaceStringTemplate
//
//  Created by BridgeLabz on 12/07/16.
//  Copyright © 2016 com.bridgeLabz. All rights reserved.
//

//begin
import Foundation
func replace(template:String)->(){
    print("Hello \(template), How are you?")
}
print("Enter Username")
var stringTemplate:String               //Declaring string

stringTemplate=readLine()!              //Taking imput from the user

if stringTemplate.characters.count>=3 { //checking for minimum characters
    replace(stringTemplate)
}
else{
    print("Username must be min 3 characters !")
}
//end