//
//  OverviewViewController.swift
//  Workout-Tracker
//
//  Created by Mikhail Kostylev on 05.07.2022.
//

import UIKit

final class OverviewViewController: BaseViewController {
    
    private let allWorkoutsButtonHeight: CGFloat = 28
    private let allWorkoutsButtonWidth: CGFloat = 130
    
    private lazy var allWorkoutsButton = SecondaryButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
}

extension OverviewViewController {
    
    override func addViews() {
        super.addViews()
        
        view.addSubview(allWorkoutsButton)
    }
    
    override func layoutViews() {
        super.layoutViews()
        
        allWorkoutsButton.prepareForAutoLayout()
        
        let constraints = [
            allWorkoutsButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            allWorkoutsButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            allWorkoutsButton.heightAnchor.constraint(equalToConstant: allWorkoutsButtonHeight),
            allWorkoutsButton.widthAnchor.constraint(equalToConstant: allWorkoutsButtonWidth),
        ]
        
        NSLayoutConstraint.activate(constraints)
    }
    
    override func configure() {
        super.configure()
        
        allWorkoutsButton.setTitle(Resources.Strings.NavBar.Overview.allWorkoutsButtonTitle)
        allWorkoutsButton.addTarget(self, action: #selector(allWorkoutsButtonAction), for: .touchUpInside)
    }
}

@objc extension OverviewViewController {
    
    func allWorkoutsButtonAction() {
        print(#function)
    }
}
