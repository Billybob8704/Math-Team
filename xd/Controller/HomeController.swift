//
//  HomeController.swift
//  xd
//
//  Created by FOREMAN, CHRISTIAN on 1/8/20.
//  Copyright © 2020 district196.org. All rights reserved.
//

import UIKit

class HomeController: UIViewController {
    
    // MARK: - Properties
    
    var delegate: HomeControllerDelegate?
    
    // MARK: - Init
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let button = UIButton(type: .system) // let preferred over var here
        button.frame = CGRect(x: self.view.frame.size.width - 60, y: 60, width: 200, height: 50)
        button.backgroundColor = UIColor.green
        button.setTitle("Button", for: UIControl.State.normal)
        button.addTarget(self, action: "Action:", for: UIControl.Event.touchUpInside)
        button.setGradientBackground(colorOne: Colors.aquamarine, colorTwo: Colors.blue)
        self.view.addSubview(button)
        
        
        view.setGradientBackground(colorOne: Colors.aquamarine, colorTwo: Colors.blue)
        configureNavigationBar()
    }
    
    
    // MARK: - Handlers
    
    @objc func handleMenuToggle() {
        delegate?.handleMenuToggle(forMenuOption: nil)
    }
    
    func configureNavigationBar() {
        navigationController?.navigationBar.barTintColor = .darkGray
        navigationController?.navigationBar.barStyle = .black
        
        navigationItem.title = "The Epic Math Team App"
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: #imageLiteral(resourceName: "ic_menu_white_3x").withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(handleMenuToggle))
    }
}
