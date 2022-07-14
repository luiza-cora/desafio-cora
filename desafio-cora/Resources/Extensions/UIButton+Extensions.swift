//
//  UIButton+Extensions.swift
//  desafio-cora
//
//  Created by Cora on 09/07/22.
//

import Foundation
import UIKit

enum DSButtonType: String {
    case primary
    case secondary
}

enum ButtonIcon {
    case left
    case right
    case none
}

extension UIButton {
    static func build(type: DSButtonType) -> UIButton {
        let button = UIButton()
        button.layer.cornerRadius = 16
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(Icons.arrowRight.icon, for: .normal)
        button.imageEdgeInsets = .init(top: 22, left: 3, bottom: 4, right: 15)

        if type == .primary {
            button.backgroundColor = DSColors.white.color
            button.setTitleColor(DSColors.primary.color, for: .normal)
            button.titleLabel?.font = UIFont(name: "Montserrat-Bold", size: 16)
            button.heightAnchor.constraint(equalToConstant: 64).isActive = true
        } else {
            button.heightAnchor.constraint(equalToConstant: 48).isActive = true
            button.titleLabel?.font = UIFont(name: "Montserrat-Bold", size: 14)
            button.backgroundColor = DSColors.secondary.color
            button.setTitleColor(DSColors.white.color, for: .normal)
            button.layer.borderWidth = 1
            button.layer.borderColor = DSColors.white.color.cgColor
        }
        
        return button
    }
}
