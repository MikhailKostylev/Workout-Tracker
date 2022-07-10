//
//  TimerView.swift
//  Workout-Tracker
//
//  Created by Mikhail Kostylev on 10.07.2022.
//

import UIKit

final class TimerView: BaseInfoView {
    
    private lazy var progressView: ProgressView = {
        let view = ProgressView()
        view.drawProgress(with: 1)
        return view
    }()
}

extension TimerView {
    override func addViews() {
        super.addViews()
        
        addView(progressView)
    }
    
    override func layoutViews() {
        super.layoutViews()
        
        let constraints = [
            progressView.topAnchor.constraint(equalTo: topAnchor, constant: 40),
            progressView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 40),
            progressView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -40),
            progressView.heightAnchor.constraint(equalTo: progressView.widthAnchor)
        ]
        
        NSLayoutConstraint.activate(constraints)
    }
    
    override func configureViews() {
        super.configureViews()
        
    }
}
