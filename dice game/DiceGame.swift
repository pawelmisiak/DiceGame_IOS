//
//  DiceGame.swift
//  dice game
//
//  Created by Pawel Misiak on 11/11/18.
//  Copyright © 2018 Pawel Misiak. All rights reserved.
//

import Foundation

class DiceGame {
    var arrayOfDice = Array<Dice>()
    
    func roll() -> Dice{
        var dice = Dice()
        dice.sideNumber = dice.numberOfSides.arc4random
        
        return dice
    }
    
    init(numOfDices: Int) {
        for _ in 0..<numOfDices{
            let dice = roll()
            self.arrayOfDice.append(dice)
        }
    }
}


extension Int {
    var arc4random: Int {
        if (self > 0) {
            return Int(arc4random_uniform(UInt32(self)))
        } else if (self < 0) {
            return -Int(arc4random_uniform(UInt32(self)))
        } else {
            return 0
        }
    }
}

