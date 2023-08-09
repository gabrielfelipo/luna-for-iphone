//
//  LunaButtonStyle2.swift
//  luna
//
//  Created by Cynara Costa on 27/07/23.
//

import UIKit

enum LunaButtonStyle {
    case next
    case previous
    case initial
    case settings
    case seeMore
    
    var value: String {
        switch self {
        case .initial:
            return L10n.Constants.Content.Button.start
        case .previous:
            return L10n.Constants.Content.Button.previous
        case .next:
            return L10n.Constants.Content.Button.continue
        case.settings:
            return L10n.Constants.Content.Button.settings
        case .seeMore:
            return L10n.Constants.Content.Button.seeMore
        }
    }
    
}

