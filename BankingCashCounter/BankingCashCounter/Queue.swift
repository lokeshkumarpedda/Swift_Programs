//
//  Queue.swift
//  BankingCashCounter
//
//  Created by BridgeLabz on 18/07/16.
//  Copyright © 2016 BridgeLabz. All rights reserved.
//

import Foundation

//creating a node with operation and cash values

class Node{
    var operation : String! = nil
    var cash : Int! = 0
    var next : Node?
    
    init(val1: String,val2: Int){
        self.operation = val1
        self.cash = val2
    }
}

class Queue{
    var head : Node!
    
    //Adding the element to the queue
    
    func enqueue(operation : String , cash : Int){
        let newNode = Node(val1: operation , val2: cash)
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
    
    //Removing element from the queue
    
    func dequeue() -> (String , Int) {
        let temp1 = head.operation , temp2 = head.cash
        if head.next != nil{
            let currentNode = head.next
            head.next = nil
            head = currentNode
        }
        else{
            head = nil
        }
        
        return (temp1,temp2)
    }
    
    
    //Queue is empty or not
    
    func isEmpty() -> Bool {
        if head == nil{
            return true
        }
        else{
            return false
        }
    }
    
    //Finding the size of the queue
    
    func size() -> Int {
        var count = 1 , currentNode = head
        while currentNode.next != nil {
            currentNode = currentNode.next
            count += 1
        }
        return count
    }
    
    //displaying the queue
    
    func display(){
        var currentNode = head
        while currentNode != nil {
            print("\(currentNode.operation) \t \(currentNode.cash)")
            currentNode = currentNode.next
        }
    }
}