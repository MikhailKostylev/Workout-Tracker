//
//  SessionViewController.swift
//  Workout-Tracker
//
//  Created by Mikhail Kostylev on 05.07.2022.
//

import UIKit

final class SessionViewController: BaseViewController {
    
    private lazy var timerView = TimerView()
    private lazy var timerDuration: Double = 3
    
    private let padding: CGFloat = 15
    
    override func navBarLeftButtonHandler() {
        if timerView.state == .isStopped {
            timerView.startTimer()
        } else {
            timerView.pauseTimer()
        }
        
        timerView.state = timerView.state == .isRunning ? .isStopped  : .isRunning
        
        setTitleForBarButton(
            timerView.state == .isRunning ?
            R.Strings.NavBar.Session.leftBarPause : R.Strings.NavBar.Session.leftBarStart,
            at: .left)
    }
    
    override func navBarRightButtonHandler() {
        timerView.stopTimer()
        timerView.state = .isStopped
        
        setTitleForBarButton(R.Strings.NavBar.Session.leftBarStart, at: .left)
    }
}

extension SessionViewController {
    override func addViews() {
        super.addViews()

        view.addView(timerView)
    }

    override func layoutViews() {
        super.layoutViews()

        let constraints = [
            timerView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: padding),
            timerView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: padding),
            timerView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -padding)
        ]
        
        NSLayoutConstraint.activate(constraints)
    }

    override func configureViews() {
        super.configureViews()

        navigationItem.title = R.Strings.NavBar.Session.title
        addNavBarButton(at: .left , with: R.Strings.NavBar.Session.leftBarStart)
        addNavBarButton(at: .right, with: R.Strings.NavBar.Session.rightBarFinish)
        
        timerView.configure(with: timerDuration, progress: 0)
    }
}



