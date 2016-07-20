//
//  Utility.swift
//  UtilityClass
//
//  Created by BridgeLabz on 18/07/16.
//  Copyright © 2016 BridgeLabz. All rights reserved.
//

class Utility {
    
    //For binary search for integers
    
    func binarySearch(numberArray : [Int] , number : Int) -> Bool{
        var start = 0 , integerArray = self.insertionSort(numberArray) , middle = 0 , end = integerArray.count
        while true {
            if end < start{
                return false
            }
            middle = start + (end - start)/2
            if integerArray[middle] == number{
                return true
            }
            else if integerArray[middle] < number{
                start = middle + 1
            }
            else{
                end = middle - 1
            }
        }
    }
    
    //Binary search for string
    
    func binarySearch(stringArray : [String], word : String) -> Bool{
        var start = 0 ,array = self.insertionSort(stringArray) , middle = 0 , end = array.count
        while true {
            if end < start{
                return false
            }
            middle = start + (end - start)/2
            if array[middle] == word{
                return true
            }
            else if array[middle] < word{
                start = middle + 1
            }
            else{
                end = middle - 1
            }
        }
    }
    
    //Insertion sort for numbers
    
    func insertionSort(numberArray : [Int]) -> [Int]{
        var k : Int, j : Int = 0, integerArray = numberArray
        while (j < integerArray.count ){
            k=j
            while (k < integerArray.count){
                if integerArray[j] > integerArray[k]{
                    let temp = integerArray[j]
                    integerArray[j] = integerArray[k]
                    integerArray[k] = temp
                }
                k=k+1
            }
            j=j+1
        }
        return integerArray
    }
    
    //Insertion sort for strings
    
    func insertionSort(stringArray : [String]) -> [String]{
        var k : Int, j : Int = 0, strArray = stringArray
        while (j < strArray.count ){
            k=j
            while (k < strArray.count){
                if strArray[j] > strArray[k]{
                    let temp = strArray[j]
                    strArray[j] = strArray[k]
                    strArray[k] = temp
                }
                k=k+1
            }
            j=j+1
        }
        return strArray
    }
    
    //Bubble sort for integers
    
    func bubbleSort(numberArray : [Int]) -> [Int] {
        var k : Int, j : Int = 0 , integerArray = numberArray
        while (j < integerArray.count ){
            k=1
            while (k < integerArray.count){
                if integerArray[k] < integerArray[k-1]{
                    let temp = integerArray[k]
                    integerArray[k] = integerArray[k-1]
                    integerArray[k-1] = temp
                }
                k=k+1
            }
            j=j+1
        }
        return integerArray
    }
    
    
    //Bubble sort for strings
    
    func bubbleSort(stringArray : [String]) -> [String] {
        var k : Int, j : Int = 0 ,strArray = stringArray
        while (j < strArray.count ){
            k=1
            while (k < strArray.count){
                if strArray[k] < strArray[k-1]{
                    let temp = strArray[k]
                    strArray[k] = strArray[k-1]
                    strArray[k-1] = temp
                }
                k=k+1
            }
            j=j+1
        }
        return strArray
    }
}