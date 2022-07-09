//
//  SessionViewController.swift
//  Workout-Tracker
//
//  Created by Mikhail Kostylev on 05.07.2022.
//

import UIKit

final class SessionViewController: BaseViewController {
    
    private let padding: CGFloat = 15
    
    private lazy var timerView: BaseInfoView = {
        let view = BaseInfoView(with: "Test", buttonTitle: "Test Buttton")
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
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
            timerView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -padding),
            timerView.heightAnchor.constraint(equalTo: view.widthAnchor, constant: -padding*2)
        ]
        
        NSLayoutConstraint.activate(constraints)
    }

    override func configureViews() {
        super.configureViews()

        navigationItem.title = R.Strings.NavBar.Session.title
        addNavBarButton(at: .left , with: R.Strings.NavBar.Session.leftBarButton)
        addNavBarButton(at: .right, with: R.Strings.NavBar.Session.rightBarButton)
    }
}



