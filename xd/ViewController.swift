//
//  ViewController.swift
//  xd
//
//  Created by FOREMAN, CHRISTIAN on 12/13/19.
//  Copyright © 2019 district196.org. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ButtonMan: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.setGradientBackground(colorOne: Colors.aquamarine, colorTwo: Colors.blue)
        ButtonMan.setGradientBackground(colorOne: Colors.blue, colorTwo: Colors.aquamarineV2)
    }
}

