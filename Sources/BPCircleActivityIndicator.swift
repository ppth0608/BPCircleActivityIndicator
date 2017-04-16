//
//  BPCircleActivityIndicator.Swift
//  Pods
//
//  Created by Naver on 2017. 3. 30..
//
//

import UIKit

@IBDesignable
public class BPCircleActivityIndicator: UIView {
    
    private var circleLotateLayer = CircleLotateLayer()
    private var rotateSpeed: Double = 0.6
    private var interval: Double = 0.0
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupLayer()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupLayer()
    }
    
    public func rotateSpeed(_ speed: Double) -> Self {
        self.rotateSpeed = speed
        return self
    }
    
    public func interval(_ interval: Double) -> Self {
        self.interval = interval
        return self
    }
    
    override public func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func setupLayer() {
        let frame = CGRect(x: 0, y: 0, width: 30, height: 30)
        circleLotateLayer = CircleLotateLayer(frame: frame)
        layer.addSublayer(circleLotateLayer)
    }
    
    public func animate() {
        circleLotateLayer.animate(duration: rotateSpeed, interval: interval)
    }
    
    public func stop() {
        circleLotateLayer.removeAllAnimations()
    }
}
