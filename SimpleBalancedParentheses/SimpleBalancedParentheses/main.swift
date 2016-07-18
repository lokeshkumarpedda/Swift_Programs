//
//  main.swift
//  SimpleBalancedParentheses
//
//  Created by BridgeLabz on 16/07/16.
//  Copyright © 2016 BridgeLabz. All rights reserved.
//

//begin
import Foundation

let expression = readLine()!                    //reading the expression
let st = Stack()                                //creating object for the stack class
var flag = 0
for i in expression.characters{
    if i == "("{
        st.push("(")                            //pushing the parentheses into the stack
    }
    else if i == ")"  {
        if st.pop() == false{                   //checking element is poped from the stack or not
            print("Arithmetic Expression is not balanced")
            flag = 1
            break
        }
    }
}
if flag == 0{
    if st.isEmpty() == true {
        print("The Arithmetic Expression is balanced")
    }else{
        print("Arithmetic Expression is not balanced")
        
    }
}

//end