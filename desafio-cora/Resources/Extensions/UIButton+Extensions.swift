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

        if type == .primary {
            button.backgroundColor = DSColors.white.color
            button.setTitleColor(DSColors.primary.color, for: .normal)
            button.titleLabel?.font = UIFont(name: "Montserrat-Regular", size: 16)
            button.heightAnchor.constraint(equalToConstant: 64).isActive = true
        } else {
            button.heightAnchor.constraint(equalToConstant: 48).isActive = true
            button.titleLabel?.font = UIFont(name: "Montserrat-Regular", size: 14)
            button.backgroundColor = DSColors.primary.color
            button.setTitleColor(DSColors.white.color, for: .normal)
            button.layer.borderWidth = 1
            button.layer.borderColor = DSColors.white.color.cgColor
        }
        return button
    }
}
