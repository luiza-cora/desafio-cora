//
//  Icons.swift
//  desafio-cora
//
//  Created by Cora on 27/06/22.
//

import Foundation
import UIKit

enum Icons {
    case arrowRight
    
    var icon: UIImage? {
        switch self {
        case .arrowRight:
            return UIImage(named: "iconArrowRight") ?? UIImage(named: "iconArrowRight")!
        }
    }
}

