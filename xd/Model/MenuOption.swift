//
//  MenuOption.swift
//  xd
//
//  Created by FOREMAN, CHRISTIAN on 1/9/20.
//  Copyright © 2020 district196.org. All rights reserved.
//

import UIKit

enum MenuOption: Int, CustomStringConvertible {
    
    case Profile
    case Study
    case Practice
    case BasicInfo
    case MTC
    
    var description: String {
        switch self {
        case .Profile: return "Profile"
        case .Study: return "Study"
        case .Practice: return "Practice"
        case .BasicInfo: return "Basic Info"
        case .MTC: return "MTC"
        }
    }
    
    var image: UIImage {
        switch self {
        case .Profile: return UIImage(named: "ic_person_outline_white_2x") ?? UIImage()
        case .Study: return UIImage(named: "ic_menu_white_3x") ?? UIImage()
        case .Practice: return UIImage(named: "ic_menu_white_3x") ?? UIImage()
        case .BasicInfo: return UIImage(named: "ic_menu_white_3x") ?? UIImage()
        case .MTC: return UIImage(named: "ic_menu_white_3x") ?? UIImage()
            
        }
    }
}
