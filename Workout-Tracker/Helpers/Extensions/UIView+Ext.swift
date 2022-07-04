//
//  UIView+Ext.swift
//  Workout-Tracker
//
//  Created by Mikhail Kostylev on 04.07.2022.
//

import UIKit

extension UIView {
    @discardableResult func prepareForAutoLayout() -> Self {
        self.translatesAutoresizingMaskIntoConstraints = false
        return self
    }
}
