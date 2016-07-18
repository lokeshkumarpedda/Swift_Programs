//
//  LinkedList.swift
//  OrderedList
//
//  Created by BridgeLabz on 15/07/16.
//  Copyright © 2016 BridgeLabz. All rights reserved.
//

import Foundation

//Creating the Node and making it data value
class Node{
    var data : Int! = nil
    var next : Node?
    
    init(val: Int){
        self.data = val
    }
}

class LinkedList{
    var head : Node!
    
    func ascendingOrder(number: Int){
        if self.isEmpty(){
            self.append(number)
        }
        else{
            var currentNode = head
            while currentNode.data < number && currentNode.next != nil{
                currentNode = currentNode.next
            }
            if currentNode.next == nil && currentNode.data < number {
                self.append(number)
            }
            else{
                self.insert(self.index(currentNode.data), item: number)
            }
            
        }
    }
    
    //Append the number either list is empty or with elements
    
    func append(number : Int){
        let newNode = Node(val : number)
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
    
    //Removing particular element in the list assuming the element is in the list
    
    func remove(number : Int) {
        var currentNode = head.next , previousNode = head
        if head.data == number {
            head = head.next
        }
        else{
            while currentNode!.next != nil{
                if currentNode!.data == number {
                    previousNode.next = currentNode?.next
                    break
                }
                else{
                    previousNode = currentNode
                    currentNode = currentNode?.next
                }
            }
            if currentNode?.data == number && currentNode?.next == nil {
                previousNode.next = nil
            }
        }
    }
    
    //Searching for a particular element
    
    func  search(number : Int) -> Bool {
        var currentNode = head
        while currentNode.next != nil {
            if currentNode.data == number {
                return true
            }
            currentNode = currentNode.next
        }
        if currentNode.data == number{
            return true
        }
        return false
    }
    
    //Finding list is empty or not
    
    func isEmpty() -> Bool{
        if head == nil{
            return true
        }
        return false
    }
    
    //Finding the list size
    
    func size() -> Int{
        var count = 0
        var currentNode = head
        if head == nil{return 0}
        while currentNode.next != nil{
            count += 1
            currentNode = currentNode.next
        }
        return count+1
    }
    
    //Finding the position of a particular element
    
    func index(number : Int) -> Int {
        var position = 1
        var currentNode = head
        while currentNode.next != nil && currentNode.data != number{
            position += 1
            currentNode = currentNode.next
        }
        return position
    }
    
    //Inserting particular element in particular position
    
    func insert(pos : Int , item : Int) {
        var  currentNode = head , previousNode = head
        let newNode = Node(val: item)
        if pos == 1{
            head = newNode
            head.next = currentNode
        }
        else if size() == pos {
            while currentNode.next?.next != nil{
                currentNode = currentNode.next
            }
            newNode.next = currentNode.next
            currentNode.next = newNode
        }
        else {
            for _ in 2...pos{
                previousNode = currentNode
                currentNode = currentNode.next
            }
            previousNode.next = newNode
            newNode.next = currentNode
        }
        
    }
    
    //Remove the last element in the list and returns it
    
    func pop() -> Int{
        var currentNode = head
        if head == nil{return 0}
        if head.next != nil {
            for _ in 1..<size() - 1 {
                currentNode = currentNode.next
            }
            let temp = currentNode.next!.data
            currentNode.next = nil
            return temp
        }
        else {
            let temp = head.data
            head = nil
            return temp
        }
    }
    
    //Remove the element from the particular position
    
    func pop(pos: Int) -> Int{
        var currentNode = head
        var temp : Int!
        if pos == 1{
            temp = head.data
            head = currentNode.next
            return temp
        }
        else if pos == size(){
            return pop()
        }
        else{
            for _ in 1..<pos{
                currentNode = currentNode.next
            }
            temp = currentNode.data
            remove(temp)
            return temp
        }
    }
    
    //Displaying the Entire list
    
    func display() {
        if isEmpty() {
            print("Linked List is Empty")
        }
        else{
            var currentNode = head
            while currentNode.next != nil{
                print(currentNode.data)
                currentNode = currentNode.next
            }
            print(currentNode.data)
        }
    }
    
    //Clearing the file before entering data into it
    
    func deleteFromFile(path : String){
        let outputStream: NSOutputStream! = NSOutputStream(toFileAtPath: path, append: false)
        outputStream.open()
        let temp = ""
        outputStream.write(temp, maxLength: temp.characters.count)
        outputStream.close()
    }
    
    //Sending linked list in to the file
    
    func appendToFile(out : NSOutputStream){
        self.display()
        out.open()
        var currentNode = head
        var temp = String( currentNode.data) + "\n"
        while currentNode.next != nil {
            temp = String(currentNode.data) + "\n"
            out.write(temp, maxLength: temp.characters.count)
            currentNode = currentNode.next
        }
        temp = String(currentNode.data)
        out.write(temp, maxLength: temp.characters.count)
        out.close()
    }
}