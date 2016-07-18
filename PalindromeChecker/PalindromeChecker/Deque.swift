//
//  Deque.swift
//  PalindromeChecker
//
//  Created by BridgeLabz on 15/07/16.
//  Copyright © 2016 BridgeLabz. All rights reserved.
//

import Foundation

//Creating the node

class Node{
    var data : Character! = nil
    var right : Node?
    var left : Node?
    
    init(val: Character){
        self.data = val
    }
}

class Deque{
    var head : Node!
    
    //Appending the char front of the Deque
    
    func addFront(char : Character){
        let newNode = Node(val : char)
        if (head == nil){
            head = newNode
        }else{
            newNode.right = head
            head.left = newNode
            head = newNode
        }
    }
    
    //Appending the char at Rear of the Deque
    
    func addRear(char : Character){
        let newNode = Node(val : char)
        if (head == nil){
            head = newNode
        }else{
            var currentNode = head
            while currentNode.right != nil{
                currentNode = currentNode.right
            }
            currentNode.right = newNode
            newNode.left = currentNode
        }
    }
    
    //Removing element from the front of the Deque
    
    func removeFront() -> Character{
        if !self.isEmpty() {
            let temp = head.data , nextNode = head.right
            nextNode?.left = nil
            head.right = nil
            head = nextNode
            return temp
        }
        else{
            return "D"
        }
    }
    
    //Removing element from the Rear
    
    func removeRear() ->Character{
        if !self.isEmpty(){
            var currentNode = head
            while currentNode.right != nil {
                currentNode = currentNode.right
            }
            let temp = currentNode.data
            currentNode.left?.right = nil
            currentNode.left = nil
            return temp
        }
        else{
            return "D"
        }
    }
    
    //Finding Deque is Empty or not
    
    func isEmpty() -> Bool{
        if head == nil{
            return true
        }
        return false
    }
    
    //Finding the size of the Deque
    func size() -> Int{
        if !self.isEmpty() {
            var count = 1
            var currentNode = head
            while currentNode.right != nil {
                count += 1
                currentNode = currentNode.right
            }
            return count
        }
        return 0
    }
    
    //Displaying the Deque
    
    func display() {
        var currentNode = head
        while currentNode.right != nil{
            print(currentNode.data)
            currentNode = currentNode.right
        }
        print(currentNode.data)
    }
}