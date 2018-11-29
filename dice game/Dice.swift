//
//  Dice.swift
//  dice game
//
//  Created by Pawel Misiak on 11/11/18.
//  Copyright © 2018 Pawel Misiak. All rights reserved.
//

import Foundation

struct Dice {
    var numberOfSides: Int
    var sideNumber: Int
    
    init() {
        self.numberOfSides = 6
        self.sideNumber = 0
    }
}
