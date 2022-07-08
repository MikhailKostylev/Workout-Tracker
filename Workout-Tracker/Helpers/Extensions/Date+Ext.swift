//
//  Date+Ext.swift
//  Workout-Tracker
//
//  Created by Mikhail Kostylev on 08.07.2022.
//

import Foundation

extension Date {
    
    private var calendar: Calendar {
        return Calendar.current
    }
    
    var startOfWeek: Date {
        let dateComponents = calendar.dateComponents([.yearForWeekOfYear, .weekOfYear], from: self)
        guard let firstDay = calendar.date(from: dateComponents) else { return self }
        return calendar.date(byAdding: .day, value: 1, to: firstDay) ?? self
    }
    
    func goForward(to days: Int) -> Date {
        return calendar.date(byAdding: .day, value: days, to: self) ?? self
    }
    
    func stripTime() -> Date {
        let components = calendar.dateComponents([.year, .month, .day], from: self)
        return calendar.date(from: components) ?? self
    }
}
