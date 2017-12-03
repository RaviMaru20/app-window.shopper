//
//  WageLogic.swift
//  windowShopper
//
//  Created by Ravi Maru on 2017-11-29.
//  Copyright © 2017 Ravi Maru. All rights reserved.
//

import Foundation

class wage{
    class func HoursLogic(forwage wage: Double, forprice price: Double) -> Int {
        return Int(ceil(price / wage ))
    }
}
