//
//  Date.swift
//  luna
//
//  Created by sml on 26/07/23.
//

import Foundation

extension Date {
    func daysBetween(_ endDate: Date) -> Int {
        return Calendar.current.dateComponents([.day], from: self, to: endDate).day ?? -1
    }
    
    func daysBefore(_ numberOfDays: Int) -> Date {
        return Calendar.current.date(byAdding: .day, value: -numberOfDays, to: self) ?? Date()
    }
    
    func daysAfter(_ numberOfDays: Int) -> Date {
        return Calendar.current.date(byAdding: .day, value: numberOfDays, to: self) ?? Date()
    }
    
}