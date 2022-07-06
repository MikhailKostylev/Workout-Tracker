//
//  ProgressViewController.swift
//  Workout-Tracker
//
//  Created by Mikhail Kostylev on 05.07.2022.
//

import UIKit

final class ProgressViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupVC()
    }
    
    private func setupVC() {
        navigationItem.title = Resources.Strings.NavBar.Progress.title
        addNavBarButton(at: .left , with: Resources.Strings.NavBar.Progress.leftBarButton)
        addNavBarButton(at: .right, with: Resources.Strings.NavBar.Progress.rightBarButton)
    }
}
