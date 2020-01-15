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
    }
    
    override func viewDidAppear(_ animated: Bool) {

        let button = UIButton(type: .system) // let preferred over var here
        button.frame = CGRect(x: self.view.frame.size.width - 60, y: 60, width: 200, height: 50)
        button.setTitle("Button", for: UIControl.State.normal)
        button.addTarget(self, action: #selector(HomeController.sampleButtonClicked), for: .touchUpInside)
        self.view.addSubview(button)
        button.setGradientBackground(colorOne: Colors.joeyL, colorTwo: Colors.joeyR)
        self.view.addSubview(button)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        view.setGradientBackground(colorOne: Colors.aquamarine, colorTwo: Colors.blue)
        configureNavigationBar()
        
        //To anchor above the tab bar on the bottom of the screen:
        let bottomButtonConstraint = button.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20)
        
        //edge of the screen in InterfaceBuilder:
        let margins = view.layoutMarginsGuide
        let leadingButtonConstraint = button.leadingAnchor.constraint(equalTo: margins.leadingAnchor)
        
        bottomButtonConstraint.isActive = true
        leadingButtonConstraint.isActive = true
    }
    @objc func sampleButtonClicked(){
        
        print("sample Button Clicked")
        
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
