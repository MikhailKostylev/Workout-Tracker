//
//  OverviewViewController.swift
//  Workout-Tracker
//
//  Created by Mikhail Kostylev on 05.07.2022.
//

import UIKit

final class OverviewViewController: BaseViewController {
       
    private lazy var navBar = OverviewNavBar()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
}

extension OverviewViewController {
    
    override func addViews() {
        super.addViews()
        
        view.addView(navBar)
    }
    
    override func layoutViews() {
        super.layoutViews()
                
        let constraints = [
            navBar.topAnchor.constraint(equalTo: view.topAnchor),
            navBar.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            navBar.trailingAnchor.constraint(equalTo: view.trailingAnchor),
        ]
        
        NSLayoutConstraint.activate(constraints)
    }
    
    override func configureViews() {
        super.configureViews()
        
        navigationController?.navigationBar.isHidden = true
    }
}
