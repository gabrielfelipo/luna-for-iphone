//
//  OnboardingViewFlowDelegate.swift
//  luna
//
//  Created by alexdamascena on 24/07/23.
//

import Foundation


protocol OnboardingViewFlowDelegate {
    
    func change(newCurrentPage: Int) -> Int
}