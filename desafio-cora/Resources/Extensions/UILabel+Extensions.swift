//
//  UILabel+Extensions.swift
//  desafio-cora
//
//  Created by Cora on 30/06/22.
//

import Foundation
import UIKit


extension UILabel {
    
    static func build(numberOfLines: Int = 0) -> UILabel {
        let label = UILabel()
        label.numberOfLines = numberOfLines
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }
    
}
