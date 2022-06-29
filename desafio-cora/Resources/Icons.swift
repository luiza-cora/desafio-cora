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
    case arrowDownIn
    case arrowReturn
    case arrowUpOut
    case barCode
    case eyeHidden
    case filter
    case shareIos
    case signOut
    case timeClock
    
    var icon: UIImage? {
        switch self {
        case .arrowRight:
            return UIImage(named: "icon-arrow-right") ?? UIImage(named: "icon-arrow-right")!
        case .arrowDownIn:
            return UIImage(named: "icon-arrow-down-in") ?? UIImage(named: "icon-arrow-down-in")!
        case .arrowReturn:
            return UIImage(named: "icon-arrow-return") ?? UIImage(named: "icon-arrow-return")!
        case .arrowUpOut:
            return UIImage(named: "icon-arrow-up-out") ?? UIImage(named: "icon-arrow-up-out")!
        case .barCode:
            return UIImage(named: "icon-bar-code") ?? UIImage(named: "icon-bar-code")!
        case .eyeHidden:
            return UIImage(named: "icon-eye-hidden") ?? UIImage(named: "icon-eye-hidden")!
        case .filter:
            return UIImage(named: "icon-filter") ?? UIImage(named: "icon-filter")!
        case .shareIos:
            return UIImage(named: "icon-share-ios") ?? UIImage(named: "icon-share-ios")!
        case .signOut:
            return UIImage(named: "icon-sign-out") ?? UIImage(named: "icon-sign-out")!
        case .timeClock:
            return UIImage(named: "icon-time-clock") ?? UIImage(named: "icon-time-clock")!
        }
    }
}

