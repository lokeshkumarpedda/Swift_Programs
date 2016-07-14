//
//  main.swift
//  StopWatch
//
//  Created by BridgeLabz on 13/07/16.
//  Copyright © 2016 BridgeLabz. All rights reserved.
//

//begin
import Foundation

print("Press enter to start timer")
let i : String = readLine()!

print("\n\n\t\tSTARTED\n\n")
let time1 = CFAbsoluteTimeGetCurrent()      //geting the start time

let j : String = readLine()!
print("\t\t FINISHED\n")

let time2 = CFAbsoluteTimeGetCurrent()      //geting end time
print("Time : \(time2-time1) sec")
//end