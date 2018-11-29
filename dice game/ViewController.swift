//
//  ViewController.swift
//  dice game
//
//  Created by Pawel Misiak on 11/11/18.
//  Copyright © 2018 Pawel Misiak. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        // Do any additional setup after loading the view, typically from a nib.
        super.viewDidLoad()
        updateViewFromController()
    }
    
    private lazy var game = DiceGame(numOfDices: 2)
    
    @IBOutlet weak var gameView: UIView!
    
//    @IBAction func touchDice(_ sender: UITapGestureRecognizer) {
//        if sender.state == .ended {
//            let location = sender.location(in: gameView)
//            if let tappedView = gameView.hitTest(location, with: nil) {
//                if let diceIndex = gameView.subviews.index(of: tappedView) {
//                    print(diceIndex)
//                }
//            }
//        }
//    }
    
//    func addSubview() {
//        
//    }
    
    func updateViewFromController() {
        let diceView = DiceView()
        gameView.addSubview(diceView)
        print(game.arrayOfDice)
    }

}

