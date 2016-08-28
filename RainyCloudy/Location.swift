//
//  Location.swift
//  RainyCloudy
//
//  Created by Yoanna Mareva on 8/27/16.
//  Copyright © 2016 Yoanna Mareva. All rights reserved.
//

import Foundation

class Location {
    static var sharedInstance = Location()
    private init() {}
    
    var latitude : Double!
    var longitude : Double!
}
