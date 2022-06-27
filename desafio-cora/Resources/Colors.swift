//
//  Colors.swift
//  desafio-cora
//
//  Created by Cora on 27/06/22.
//

import UIKit


enum DSColors {
    
    case primary
    case secondary
    
    var color: UIColor {
        switch self {
        case .primary:
            return UIColor(red: 0.996, green: 0.243, blue: 0.427, alpha: 1)
        case .secondary:
            return UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        }
    }
}



