//
//  Dice View.swift
//  dice game
//
//  Created by Pawel Misiak on 11/11/18.
//  Copyright © 2018 Pawel Misiak. All rights reserved.
//

import UIKit

@IBDesignable class DiceView: UIView {

    var number: Int = 5

    func dot() -> UIBezierPath {
        let path = UIBezierPath(arcCenter: CGPoint(x: bounds.midX,y: bounds.midY), radius: CGFloat(3), startAngle: CGFloat(0), endAngle:CGFloat(Double.pi * 2), clockwise: true)
        return path
    }
    
    override func draw(_ rect: CGRect) {
        var path = UIBezierPath()
        let onePoint = dot()
        
        let middleX = self.bounds.midX / 2
        let middleY = self.bounds.midY / 2
        
        /* Create Two points for a base */
        let twoPoints = UIBezierPath()
        
        let leftPath = UIBezierPath()
        leftPath.append(onePoint)
        let leftTransform = CGAffineTransform(translationX: CGFloat(-middleX), y: CGFloat(0))
        leftPath.apply(leftTransform)
        let rightPath = UIBezierPath()
        rightPath.append(onePoint)
        let rightTransform = CGAffineTransform(translationX: CGFloat(middleX), y: CGFloat(0))
        rightPath.apply(rightTransform)
        twoPoints.append(leftPath)
        twoPoints.append(rightPath)
//        print(twoPoints)
        /*-----------------------------------------------------------------------------------------*/
        
        let topPath = UIBezierPath()
        topPath.append(twoPoints)
        let topTransform = CGAffineTransform(translationX: CGFloat(0), y: CGFloat(-middleY))
        topPath.apply(topTransform)
        let bottomPath = UIBezierPath()
        bottomPath.append(twoPoints)
        let bottomTransform = CGAffineTransform(translationX: CGFloat(0), y: CGFloat(middleY))
        bottomPath.apply(bottomTransform)
        
        
        switch number {
            
        case 1: // Two Points
            path = twoPoints
        case 2: // Three Points
            path.append(twoPoints)
            path.append(onePoint)
        case 3: // Four Points
            path.append(topPath)
            path.append(bottomPath)
        case 4: // Five Points
            path.append(topPath)
            path.append(bottomPath)
            path.append(onePoint)
        case 5:
            path.append(topPath)
            path.append(twoPoints)
            path.append(bottomPath)
        default:
            path = twoPoints
        }
        
        UIColor.black.setStroke()
        UIColor.black.setFill()
        path.fill()
        path.lineWidth = 2.0
        path.stroke()
    }
}
