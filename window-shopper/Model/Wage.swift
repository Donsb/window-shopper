//
//  Wage.swift
//  window-shopper
//
//  Created by Donald Belliveau on 2017-11-29.
//  Copyright © 2017 Donald Belliveau. All rights reserved.
//

import Foundation

class Wage {
    
    /*
     Function getHours to return the number of hours
     you need to work to buy your item.
     */
    
    class func getHours(forWage wage: Double, andPrice price: Double)-> Int {
        
        /*
        //print("\(Int(round(price / wage)))") -> Test the failed code to see why it failed.
        // Below code will fail because round rounds down.
        return Int(round(price / wage)) // -> This will fail the test.
        */
        
        // ceil rounds up the result.
        return Int(ceil(price / wage))
    }
    /*
     END getHours Function*/
    
    
}
