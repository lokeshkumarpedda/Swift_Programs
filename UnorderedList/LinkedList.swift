//
//  LinkedList.swift
//  UnorderedList
//
//  Created by BridgeLabz on 14/07/16.
//  Copyright © 2016 BridgeLabz. All rights reserved.
//

import Foundation

//Creating the Node and making it data value
class Node{
    var data : String! = nil
    var next : Node?
    
    init(val: String){
        self.data = val
    }
}

class LinkedList{
    var head : Node!
    
    //Append the word either list is empty or with elements
    
    func append(word : String){
        let newNode = Node(val : word)
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
    
    func remove(word : String) {
        var currentNode = head.next , previousNode = head
        if head.data == word {
            head = head.next
        }
        else{
            while currentNode!.next != nil{
                if currentNode!.data == word {
                    previousNode.next = currentNode?.next
                    break
                }
                else{
                    previousNode = currentNode
                    currentNode = currentNode?.next
                }
            }
            if currentNode?.data == word && currentNode?.next == nil {
                previousNode.next = nil
            }
        }
    }
    
    //Searching for a particular element
    
    func  search(word : String) -> Bool {
        var currentNode = head
        while currentNode.next != nil {
            if currentNode.data == word {
                return true
            }
            currentNode = currentNode.next
        }
        if currentNode.data == word{
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
    
    func index(word : String) -> Int {
        var position = 1
        var currentNode = head
        while currentNode.next != nil && currentNode.data != word{
            position += 1
            currentNode = currentNode.next
        }
        return position
    }
    
    //Inserting particular element in particular position
    
    func insert(pos : Int , item : String) {
        var  currentNode = head , previousNode = head
        let newNode = Node(val: item)
        if pos == 1{
            head = newNode
            head.next = currentNode
        }
        else if size() == pos {
            append(item)
        }
        else {
            for _ in 1...pos{
                previousNode = currentNode
                currentNode = currentNode.next
            }
            previousNode.next = newNode
            newNode.next = currentNode
        }
        
    }
    
    //Remove the last element in the list and returns it
    
    func pop() -> String{
        var currentNode = head
        if head == nil{return "Linked List is Empty"}
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
    
    func pop(pos: Int) -> String{
        var currentNode = head
        var temp : String!
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
    
    //Clearing the file
    
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
        var temp = currentNode.data + "\n"
        while currentNode.next != nil {
            temp = currentNode.data + "\n"
            out.write(temp, maxLength: temp.characters.count)
            currentNode = currentNode.next
        }
        temp = currentNode.data
        out.write(temp, maxLength: temp.characters.count)
        out.close()
    }
}