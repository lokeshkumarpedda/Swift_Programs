//
//  main.swift
//  HashingFunction
//
//  Created by BridgeLabz on 15/07/16.
//  Copyright © 2016 BridgeLabz. All rights reserved.
//

import Foundation

let hash = Hashing()

//Adding the slots

for i in 0...10{
    hash.add(i)
}

//reading the file and inserting the numbers in the appropriate slots

let path = "/Users/bridgelabz/Desktop/Practise_Programs/HashingFunction/HashingFunction/numbers.txt"
var data = try NSString(contentsOfFile: path,encoding: NSASCIIStringEncoding)
var arr = [Int]()
data.enumerateLinesUsingBlock({ (line, stop) -> () in
    if(line != "\n"){arr.append(Int( line)!)}})
for i in arr{
    let j = i % 11
    hash.addElement(j, number: i)
}

//Taking user input to search the number

print("Enter the number")
let number = Int(readLine()!)!
if hash.searchAndRemove(number) == 0{
    print("Number not found \n It is added now")
}
else{
    print("Found the Number and deleted")
}

//Upadating the file

let outputStream: NSOutputStream! = NSOutputStream(toFileAtPath: path, append: true)
hash.deleteFromFile(path)          //clearing the file before entering data
hash.appendToFile(outputStream)    //appending the linked list in to the file
//end