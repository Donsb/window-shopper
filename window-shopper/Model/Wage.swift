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
        // ceil rounds up the result.
        return Int(ceil(price / wage))
    }
    /*
     END getHours Function*/
    
    
}
