//
//  CircleLayer.swift
//  Pods
//
//  Created by Naver on 2017. 3. 30..
//
//

import UIKit

internal class CircleLayer: CAShapeLayer {
    
    override init() {
        super.init()
    }
    
    init(frame: CGRect, color: CGColor) {
        super.init()
        self.frame = frame
        self.path = UIBezierPath(
            roundedRect: CGRect(x: 0, y: 0, width: frame.size.width, height: frame.size.height),
            cornerRadius: bounds.width / 2
        ).cgPath
        self.fillColor = color
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
