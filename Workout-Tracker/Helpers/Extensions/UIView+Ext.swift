//
//  UIView+Ext.swift
//  Workout-Tracker
//
//  Created by Mikhail Kostylev on 04.07.2022.
//

import UIKit

extension UIView {
    
    public var width: CGFloat {
        return frame.size.width
    }
    
    public var height: CGFloat {
        return frame.size.height
    }
    
    public var top: CGFloat {
        return frame.origin.y
    }
    
    public var bottom: CGFloat {
        return frame.size.height + frame.origin.y
    }
    
    public var left: CGFloat {
        return frame.origin.x
    }
    
    public var right: CGFloat {
        return frame.size.width + frame.origin.x
    }
    
    @discardableResult func prepareForAutoLayout() -> Self {
        self.translatesAutoresizingMaskIntoConstraints = false
        return self
    }
    
    func addButtonBorder(with color: UIColor, height: CGFloat) {
        let separator = UIView()
        separator.backgroundColor = color
        separator.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        separator.frame = CGRect(
            x: 0,
            y: self.height - height,
            width: width,
            height: height
        )
        
        addSubview(separator)
    }
}
