//
//  main.swift
//  VendingMachine
//
//  Created by BridgeLabz on 13/07/16.
//  Copyright © 2016 BridgeLabz. All rights reserved.
//

//begin
import Foundation
//Taking an empty array to find the number of notes required
var countArray = [Int](count: 8, repeatedValue: 0)

//Recursive function to count number of notes
func vending(number : Int) -> Int {
    var ch = number
    if(ch >= 1000){
        ch -= 1000
        countArray[0] += 1
        return vending(ch)
    }
    else if(ch >= 500){
        ch -= 500
        countArray[1] += 1
        return vending(ch)
    }
    else if(ch >= 100){
        ch -= 100
        countArray[2] += 1
        return vending(ch)
    }
    else if(ch >= 50){
        ch -= 50
        countArray[3] += 1
        return vending(ch)
    }
    else if(ch >= 10){
        ch -= 10
        countArray[4] += 1
        return vending(ch)
    }
    else if(ch >= 5){
        ch -= 5
        countArray[5] += 1
        return vending(ch)
    }
    else if(ch >= 2){
        ch -= 2
        countArray[6] += 1
        return vending(ch)
    }
    else if(ch >= 1){
        ch -= 1
        countArray[7] += 1
        return vending(ch)
    }
    return 0
}

//Taking input from the user
var change : Int = Int(readLine()!)!
vending(change)
var totalNotes = 0

//By Adding the countArray we get total number of notes required
for i in countArray {
    totalNotes += i
    }
let notesArray = [ "Thousands\t\t","Five hundreds\t","Hundreds\t\t","Fifties\t\t\t","Tens\t\t\t","Fives\t\t\t","Twos\t\t\t","Ones\t\t\t"]

print("Minimum number of notes required : \(totalNotes)")

//printing number of notes required
for j in 0..<8 {
    print("\(notesArray[j]): \(countArray[j])")
}

//end