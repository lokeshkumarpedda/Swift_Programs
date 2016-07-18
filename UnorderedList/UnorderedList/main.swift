//
//  main.swift
//  UnorderedList
//
//  Created by BridgeLabz on 14/07/16.
//  Copyright © 2016 BridgeLabz. All rights reserved.
//

//begin
import Foundation
let path = "/Users/bridgelabz/Desktop/Practise_Programs/UnorderedList/UnorderedList/mytext.txt"

//getting the data from the file

var data = try NSString(contentsOfFile: path,encoding: NSASCIIStringEncoding)
var arr = [String]()

//spliting each line

data.enumerateLinesUsingBlock({ (line, stop) -> () in
    if(line != "\n"){arr.append(line)}})
let llist = LinkedList()

//spliting each string from the line and appending to linked list

for  i in arr {
    let newArr = i.componentsSeparatedByString(" ")
    for j in newArr{
        llist.append(j)
    }
}

//Taking user input

let userInput = readLine()!
if llist.search(userInput){         //Searching for the word in linked list
    llist.remove(userInput)         //if the word found deleteing it from the list
    print("\(userInput) is found")
}
else{
    llist.append(userInput)         //if the word not found then adding it to the list
}
let outputStream: NSOutputStream! = NSOutputStream(toFileAtPath: path, append: true)
llist.deleteFromFile(path)          //clearing the file before entering data
llist.appendToFile(outputStream)    //appending the linked list in to the file