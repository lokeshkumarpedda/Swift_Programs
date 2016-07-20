//
//  main.swift
//  BinarySearchTheWord
//
//  Created by BridgeLabz on 14/07/16.
//  Copyright © 2016 BridgeLabz. All rights reserved.
//

//begin
import Foundation

var filemgr = NSFileManager.defaultManager()
let path = "/Users/bridgelabz/Desktop/Practise_Programs/BinarySearchTheWord/BinarySearchTheWord/words.txt"
var binArray = [String]()

//checking file exists or not

if filemgr.fileExistsAtPath(path) {
    var data = try NSString(contentsOfFile: path,encoding: NSASCIIStringEncoding)
    var arr = [String]()
    
    //storing data from file to array
    
    data.enumerateLinesUsingBlock({ (line, stop) -> () in
        if(line != "\n"){arr.append(line)}})
    for  i in arr {
        binArray = i.componentsSeparatedByString(",")
    }
    
    //Sorting the array by using insertion sort
    
    var k : Int, j : Int = 0
    while (j < binArray.count ){
        k=j
        while (k < binArray.count){
            if binArray[j] > binArray[k]{
                let temp = binArray[j]
                binArray[j] = binArray[k]
                binArray[k] = temp
            }
            k=k+1
        }
        j=j+1
    }
    
    //Asking for user input
    
    var start = 0 , middle = 0 , end = binArray.count
    print("Enter the word :")
    let word = readLine()!
    
    //Binary searching the word in the array
    
    while true {
        if end < start{
            print("Not Found")
            break
        }
        middle = start + (end - start)/2
        if binArray[middle] == word{
            print("Found")
            break
        }
        else if binArray[middle] < word{
            start = middle + 1
        }
        else{
            end = middle - 1
        }
    }
}
else{
    print("File doesn't exists")
}
//end