//
//  main.swift
//  RegularExpression
//
//  Created by BridgeLabz on 16/07/16.
//  Copyright © 2016 BridgeLabz. All rights reserved.
//


//begin
import Foundation

//Regular Expressions for <<name>> , <<full name>> , xxxxxxxxxx and 01/01/2016

let patternArray :[String] = ["[<]{2}[a-z]{4}[>]{2}","[<]{2}[a-z]{4}[ ][a-z]{4}[>]{2}","[x]{10}" , "[0-9]{2}[/][0-9]{2}[/][0-9]{4}"]
var message = " Hello <<name>>, We have your full name as <<full name>> in our system. your contact number is 91-xxxxxxxxxx. Please,let us know in case of any clarification Thank you BridgeLabz 01/01/2016."

//Taking details from the user

var detailsArray = [String]()
print("Enter Fullname")
var temp = readLine()!
detailsArray.append(temp.componentsSeparatedByString(" ")[0])
detailsArray.append(temp)
print("Enter Mobile Number")
detailsArray.append(readLine()!)

//obtaining the date

var dFormat : NSDateFormatter = NSDateFormatter()
dFormat.dateFormat = "dd/MM/yyyy"
let date: NSDate = NSDate()
var dat : String = dFormat.stringFromDate(date)
detailsArray.append(dat)
var j = 0

//Finding the patterns and replacing them

for i in patternArray{
    let regex = try NSRegularExpression(pattern: i, options: [.CaseInsensitive] )
    let str = regex.stringByReplacingMatchesInString(message, options: [], range: NSMakeRange(0, message.characters.count), withTemplate: detailsArray[j])
    message = str
    
    j += 1
}


//Printing the modified message
print(message)
//end