//
//  Stack.swift
//  SimpleBalancedParentheses
//
//  Created by BridgeLabz on 16/07/16.
//  Copyright © 2016 BridgeLabz. All rights reserved.
//

import Foundation

class Node{
    var data : String! = nil
    var next : Node?
    
    init(val: String){
        self.data = val
    }
}

//creating stack class

class Stack {
    var head : Node!
    
    //pushing element in the stack
  
    func push(element : String){
        let newNode = Node(val : element)
        if (head == nil){
            head = newNode
        }else{
            var lastNode = head
            while lastNode.next != nil {
                lastNode = lastNode.next
            }
            lastNode.next = newNode
        }
    }
    
    //Deleting top element in the stack
    
    func pop() -> Bool{
        if isEmpty() == false {
            if head.next == nil {
                head = nil
                return true
            }
            else{
                var currentNode = head , previousNode = head
                while currentNode.next != nil {
                    previousNode = currentNode
                    currentNode = currentNode.next
                    
                }
                previousNode.next = nil
                return true
            }
        }else{
            return false
        }
    }
    
    //checking Stack is empty or not
    
    func isEmpty() -> Bool{
        
        if (head == nil){
            return true
        }
        else{
            return false
        }
    }
    
    //Return the size of the Stack
    
    func size() -> Int {
        var count = 1
        var currentnode = head
        while currentnode.next != nil {
            count += 1
            currentnode = currentnode.next
        }
        
        return count
    }
}