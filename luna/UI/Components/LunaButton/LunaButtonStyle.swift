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
    case references
    case newEvent
    case letsGo
    case scheduleActivity
    case newActivity
    case backToHome
    
    var value: String {
        switch self {
        case .initial:
            return L10n.Constants.Content.Button.start
        case .previous:
            return L10n.Constants.Content.Button.previous
        case .next:
            return L10n.Constants.Content.Button.continue
        case .scheduleActivity:
            return L10n.Constants.Content.Button.scheduleActivity
        case.settings:
            return L10n.Constants.Content.Button.settings
        case .references:
            return L10n.Constants.Content.Button.references
        case .newEvent:
            return L10n.Constants.Content.Button.newEvent
        case .letsGo:
            return L10n.Constants.Content.Label.FirstTimeNewActivity.button
        case .newActivity:
            return L10n.Constants.Content.Label.Activity.Calendar.newActivity
        case .backToHome:
            return "opa opa opa"
        }
    }
    
}

