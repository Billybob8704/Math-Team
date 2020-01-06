//
//  ViewController.swift
//  xd
//
//  Created by FOREMAN, CHRISTIAN on 12/13/19.
//  Copyright © 2019 district196.org. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("This is a test another test")
    }
    @IBDesignable
    class GradientView: UIView {
        @IBInspectable var firstColor: UIColor = UIColor.clear {
            didSet {
                updateView()
            }
        }
        @IBInspectable var secondColor: UIColor = UIColor.clear {
            didSet {
                updateView()
            }
        }
        
        func updateView() {
        }
        override class var layerClass: AnyClass {
            get {
                return CAGradientLayer.self
            }
        }
        func uspdateView() {
            let layer = self.layer as! CAGradientLayer
            layer.colors = [firstColor, secondColor].map{$0.cgColor}
        }
    }
    
}

