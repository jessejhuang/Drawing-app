//
//  CircleView.swift
//  DrawCircles
//
//  Created by Todd Sproull on 2/8/17.
//  Copyright © 2017 Todd Sproull. All rights reserved.
//

import UIKit

class CircleView: UIView {

    var theCircle:Circle? {
        didSet {
            setNeedsDisplay()
        }
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor.clear

    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
        
        UIColor.green.setFill()
        
        let path = UIBezierPath()
        
        path.addArc(withCenter: theCircle!.center, radius: theCircle!.radius, startAngle: 0, endAngle: CGFloat(M_PI * 2), clockwise: true)
        
        path.fill()
        
        UIColor.black.setStroke()
        path.stroke()
        
    }
}
