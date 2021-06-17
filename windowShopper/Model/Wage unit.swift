//
//  Wage unit.swift
//  windowShopper
//
//  Created by ViktorLutsenko on 13.06.2021.
//

import Foundation

class Wage {
    class func getHours (forWage wage: Double, andPrice price: Double) -> Int {
        return Int(ceil(price/wage))
    }
}
