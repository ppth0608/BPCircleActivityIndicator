//
//  CircleLotateLayer.swift
//  Pods
//
//  Created by Naver on 2017. 3. 30..
//
//

import UIKit

internal class CircleLotateLayer: CALayer, CommonAnimation {
    
    var circle1 = CircleLayer()
    var circle2 = CircleLayer()
    var circle3 = CircleLayer()
    var circle4 = CircleLayer()
    
    override init() {
        super.init()
    }
    
    init(frame: CGRect) {
        super.init()
        self.frame = frame
        setupLayer()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupLayer()
    }
    
    private func setupLayer() {
        circle1 = CircleLayer(frame: CLSet.leftUp.frame, color: CLSet.leftUp.color)
        circle2 = CircleLayer(frame: CLSet.rightUp.frame, color: CLSet.rightUp.color)
        circle3 = CircleLayer(frame: CLSet.rightDown.frame, color: CLSet.rightDown.color)
        circle4 = CircleLayer(frame: CLSet.leftDown.frame, color: CLSet.leftDown.color)
        
        [circle1, circle2, circle3, circle4].forEach { addSublayer($0) }
    }
    
    func animate(duration: Double = 0.6, interval: Double = 0) {
        CATransaction.begin()
        circle1.add(intervalAnimation(interval, anim: fillColorAnimation(to: CLSet.leftUp.nextColor, duration: duration)), forKey: nil)
        circle2.add(intervalAnimation(interval, anim: fillColorAnimation(to: CLSet.rightUp.nextColor, duration: duration)), forKey: nil)
        circle3.add(intervalAnimation(interval, anim: fillColorAnimation(to: CLSet.rightDown.nextColor, duration: duration)), forKey: nil)
        circle4.add(intervalAnimation(interval, anim: fillColorAnimation(to: CLSet.leftDown.nextColor, duration: duration)), forKey: nil)
        
        circle1.add(intervalAnimation(interval, anim: positionAnimation(to: CLSet.leftUp.nextPosition, duration: duration)), forKey: nil)
        circle2.add(intervalAnimation(interval, anim: positionAnimation(to: CLSet.rightUp.nextPosition, duration: duration)), forKey: nil)
        circle3.add(intervalAnimation(interval, anim: positionAnimation(to: CLSet.rightDown.nextPosition, duration: duration)), forKey: nil)
        circle4.add(intervalAnimation(interval, anim: positionAnimation(to: CLSet.leftDown.nextPosition, duration: duration)), forKey: nil)
        CATransaction.commit()
    }
    
    private func intervalAnimation(_ interval: Double, anim: CABasicAnimation) -> CAAnimationGroup {
        let groupAnimation = CAAnimationGroup()
        groupAnimation.duration = anim.duration + interval
        groupAnimation.repeatCount = Float.infinity
        groupAnimation.animations = [anim]
        return groupAnimation
    }
    
    override func removeAllAnimations() {
        super.removeAllAnimations()
        circle1.removeAllAnimations()
        circle2.removeAllAnimations()
        circle3.removeAllAnimations()
        circle4.removeAllAnimations()
    }
}
