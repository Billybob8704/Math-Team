//
//  PracticeController.swift
//  xd
//
//  Created by DANICH, EVAN on 1/16/20.
//  Copyright © 2020 district196.org. All rights reserved.
//

import UIKit

class PracticeController: UIViewController {
    
    //Mark: - Properties
    var delegate: HomeControllerDelegate?
    
    //Mark: - Init
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.setGradientBackground(colorOne: Colors.awwwwwwwww, colorTwo: Colors.blue)
        configureNavigationBar()
        
    }
    //MARK: - Helper Functions
    
    func ConfigueUI() {
        view.setGradientBackground(colorOne: Colors.awwwwwwwww, colorTwo: Colors.blue)
    
    }
    
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
