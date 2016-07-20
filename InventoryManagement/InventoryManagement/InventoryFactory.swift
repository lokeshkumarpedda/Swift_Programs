//
//  InventoryFactory.swift
//  InventoryManagement
//
//  Created by BridgeLabz on 20/07/16.
//  Copyright © 2016 BridgeLabz. All rights reserved.
//

import Foundation

//creating inventory class

class inventory {
    var name : String! = nil
    var weight : Int = 0
    var price : Int = 0
}
class InventoryFactory{
    func json() {
        //file path
        let path = "/Users/bridgelabz/Desktop/Practise_Programs/InventoryManagement/InventoryManagement/inventory.json"
        let data :NSData! =  NSData(contentsOfFile: path)
        do {
        let json = try NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions.AllowFragments) as! NSDictionary
            let str1 = json["data"] as! [[String : AnyObject]]!
            let inven = inventory()
            //Assigning values to inven object
            for i in str1{
                inven.name = i["name"] as! String
                inven.price=i["price"] as! Int
                inven.weight = i["weight"] as! Int
                //printing the values of each inventory
                print("\(inven.name) value : \(inven.price * inven.weight)")
            }
        }
        catch{
            print("error")
        }
    }
}