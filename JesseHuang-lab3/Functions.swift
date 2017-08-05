//
//  Functions.swift
//  DrawCircles
//
//  Created by Todd Sproull on 2/8/17.
//  Copyright © 2017 Todd Sproull. All rights reserved.
//

import UIKit

class Functions {
    static func distance(a: CGPoint, b: CGPoint) -> CGFloat {
        return sqrt(pow(a.x - b.x,2) + pow(a.y - b.y,2))
    }
    
}
