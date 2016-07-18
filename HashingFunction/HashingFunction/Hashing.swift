//
//  Hashing.swift
//  HashingFunction
//
//  Created by BridgeLabz on 15/07/16.
//  Copyright © 2016 BridgeLabz. All rights reserved.
//

import Foundation

//Creating a node

class Node{
    var data : Int! = nil
    var right : Node?
    var down : Node?
    
    init(val: Int){
        self.data = val
    }
}

//Creating Hashing class

class Hashing{
    var head : Node!
    
    //Adding slots
    
    func add(number : Int){
        let newNode = Node(val : number)
        if (head == nil){
            head = newNode
        }else{
            var currentNode = head
            while currentNode.right != nil{
                currentNode = currentNode.right
            }
            currentNode.right = newNode
        }
    }
    
    //Adding Element in the particular slot
    
    func addElement(index : Int, number : Int){
        var currentNode = head
        while (currentNode.right != nil){
            if currentNode.data == index {
                let newNode = Node(val: number)
                var tempNode = currentNode
                if currentNode.down == nil{
                    tempNode.down = newNode
                    newNode.right = tempNode
                }
                else{
                    while(tempNode.down != nil){
                        tempNode = tempNode.down!
                    }
                    tempNode.down = newNode
                    newNode.right = tempNode
                }
                break
            }
            currentNode = currentNode.right
        }
        if currentNode.right == nil{
            let newNode = Node(val: number)
            if currentNode.down == nil {
                currentNode.down = newNode
                newNode.right = currentNode
            }
            else{
                var tempNode = currentNode
                while(tempNode.down != nil){
                    tempNode = tempNode.down!
                }
                tempNode.down = newNode
                newNode.right = tempNode
            }
        }
    }
    
    //Searching for the element , if found removing it from the list , if not found then adding it to the list
    
    func searchAndRemove(number : Int) -> Int {
        let index = number%11
        var currentNode = head
        while currentNode.data != index {
            currentNode = currentNode.right
        }
        if currentNode.down != nil{
            var tempNode = currentNode.down
            while tempNode?.data != number && tempNode?.down != nil {
                tempNode = tempNode?.down
            }
            if tempNode?.down == nil && tempNode?.data == number{
                tempNode?.right?.down = nil
                tempNode?.right = nil
                return (tempNode?.data)!
            }
            else if tempNode?.data == number && tempNode?.down != nil {
                tempNode?.right!.down = tempNode?.down
                tempNode?.down?.right = tempNode!.right
                tempNode?.down = nil
                tempNode?.right = nil
                return (tempNode?.data)!
            }
        }
        self.addElement(index, number: number)
        return 0
    }
    
    //For displaying
    
    func display() {
        var currentNode = head
        while currentNode.right != nil{
            print("Slot :\(currentNode.data)")
            if currentNode.down != nil {
                var tempNode = currentNode
                tempNode = tempNode.down
                while tempNode.down != nil {
                    print(tempNode.data)
                    tempNode = tempNode.down
                }
                if tempNode.down == nil{
                    print(tempNode.data)
                }
            }
            currentNode = currentNode.right
        }
        print("Slot :\(currentNode.data)")
        if currentNode.down != nil{
            var tempNode = currentNode
            tempNode = tempNode.down
            while tempNode.down != nil {
                print(tempNode.data)
                tempNode = tempNode.down
            }
            if tempNode.down == nil{
                print(tempNode.data)
            }
            
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
    
    //Sending data in to the file
    
    func appendToFile(out : NSOutputStream){
        out.open()
        var currentNode = head
        var temp = String( currentNode.data)
        while currentNode.right != nil{
            if currentNode.down != nil {
                var tempNode = currentNode
                tempNode = tempNode.down
                while tempNode.down != nil {
                    temp = String( tempNode.data) + "\n"
                    out.write(temp, maxLength: temp.characters.count)
                    tempNode = tempNode.down
                }
                if tempNode.down == nil{
                    temp = String( tempNode.data) + "\n"
                    out.write(temp, maxLength: temp.characters.count)
                }
            }
            currentNode = currentNode.right
        }
        if currentNode.down != nil{
            var tempNode = currentNode
            tempNode = tempNode.down
            while tempNode.down != nil {
                temp = String( tempNode.data) + "\n"
                out.write(temp, maxLength: temp.characters.count)
                tempNode = tempNode.down
            }
            if tempNode.down == nil{
                temp = String( tempNode.data) + "\n"
                out.write(temp, maxLength: temp.characters.count)
            }
            
        }
        out.close()
    }

}