//
//  ViewController.swift
//  Example
//
//  Created by Naver on 2017. 4. 16..
//  Copyright © 2017년 BPCircleActivityIndicator. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var circleIndicator: BPCircleActivityIndicator!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func startButtonTapped(sender: UIButton) {
        circleIndicator
            .rotateSpeed(speed: 0.6)
            .interval(interval: 0.3)
            .animate()
    }
    
    @IBAction func stopButtonTapped(sender: UIButton) {
        circleIndicator.stop()
    }
}
