//
//  BaseView.swift
//  Workout-Tracker
//
//  Created by Mikhail Kostylev on 07.07.2022.
//

import UIKit

class BaseView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addViews()
        layoutViews()
        configureViews()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
        addViews()
        layoutViews()
        configureViews()
    }
}

@objc extension BaseView {
    func addViews() {}
    func layoutViews() {}
    func configureViews() {
        backgroundColor = .white
    }
}
