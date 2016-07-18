//
//  main.swift
//  OrderedList
//
//  Created by BridgeLabz on 15/07/16.
//  Copyright © 2016 BridgeLabz. All rights reserved.
//

//begin
import Foundation

let path = "/Users/bridgelabz/Desktop/Practise_Programs/OrderedList/OrderedList/numbers.txt"
var data = try NSString(contentsOfFile: path,encoding: NSASCIIStringEncoding)
let llist = LinkedList()

//appending integers to the linked list

data.enumerateLinesUsingBlock({ (line, stop) -> () in
    if(line != "\n"){llist.ascendingOrder(Int( line)!)}})

//asking for user input

let inputNumber = Int( readLine()!)!
if llist.search(inputNumber){                   //Searching for number
    llist.remove(inputNumber)                   //removing the number
    print("\(inputNumber) is found and deleted")
}
else{
    llist.ascendingOrder(inputNumber)           //adding the number
}
let outputStream: NSOutputStream! = NSOutputStream(toFileAtPath: path, append: true)
llist.deleteFromFile(path)          //clearing the file before entering data
llist.appendToFile(outputStream)    //appending the linked list in to the file
//end