//
//  main.swift
//  UtilityClass
//
//  Created by BridgeLabz on 18/07/16.
//  Copyright © 2016 BridgeLabz. All rights reserved.
//

//begin
import Foundation

//Reading the file of integers

let integerPath = "/Users/bridgelabz/Desktop/Practise_Programs/UtilityClass/UtilityClass/numbers.txt"
var integerData = try NSString(contentsOfFile: integerPath,encoding: NSASCIIStringEncoding)
var integerArray = [Int]()
integerData.enumerateLinesUsingBlock({ (line, stop) -> () in
    if(line != "\n"){integerArray.append(Int( line)!)}})

//Reading the file of strings

let stringPath = "/Users/bridgelabz/Desktop/Practise_Programs/UtilityClass/UtilityClass/words.txt"
var stringData = try NSString(contentsOfFile: stringPath,encoding: NSASCIIStringEncoding)
var stringArray = [String]() , tempArray = [String]()
stringData.enumerateLinesUsingBlock({ (line, stop) -> () in
    if(line != "\n"){tempArray.append(line)}})
for i in tempArray {
    let newArr = i.componentsSeparatedByString(" ")
    for j in newArr{
        stringArray.append(j)
    }
}

//taking user input

var arr = [Double]()
let util = Utility()
print("Enter search number :")
let number = Int(readLine()!)!

//finding time for each function

var time1 = CFAbsoluteTimeGetCurrent()
print(util.binarySearch(integerArray, number: number))
var time2 = CFAbsoluteTimeGetCurrent()
var time = time2 - time1
arr.append(time)

print("Enter string :")
let str = readLine()!

time1 = CFAbsoluteTimeGetCurrent()
print(util.binarySearch(stringArray, word:str))
time2 = CFAbsoluteTimeGetCurrent()
time = time2 - time1
arr.append(time)

print("\n\n\t INSERTION SORT \n\n")
time1 = CFAbsoluteTimeGetCurrent()
print(util.insertionSort(integerArray))
time2 = CFAbsoluteTimeGetCurrent()
time = time2 - time1
arr.append(time)

print("\n\n\n")
time1 = CFAbsoluteTimeGetCurrent()
print(util.insertionSort(stringArray))
time2 = CFAbsoluteTimeGetCurrent()
time = time2 - time1
arr.append(time)

print("\n\n\t BUBBLE SORT \n\n")
time1 = CFAbsoluteTimeGetCurrent()
print(util.bubbleSort(integerArray))
time2 = CFAbsoluteTimeGetCurrent()
time = time2 - time1
arr.append(time)

print("\n\n\n")
time1 = CFAbsoluteTimeGetCurrent()
print(util.bubbleSort(stringArray))
time2 = CFAbsoluteTimeGetCurrent()
time = time2 - time1
arr.append(time)

//making descending order based on elasped time

print("\n\n\tELASPED TIME IN DESCENDING ORDER\n")
let bin = ["binarySearch method for integer","binarySearch method for String","insertionSort method for integer","insertionSort method for String","bubbleSort method for integer","bubbleSort method for String"]
var j = 0
while j < arr.count{
    var max = arr[0]
    var i = 0,temp = 0
    while i < arr.count{
        if max < arr[i]{
            max = arr[i]
            temp = i
        }
        i += 1
    }
    print("\(bin[temp]) \t  \(arr[temp])")
    arr[temp] = 0
    j += 1
}
//end