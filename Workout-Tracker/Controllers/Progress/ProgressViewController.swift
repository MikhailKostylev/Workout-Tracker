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
        
        
    }
}

extension ProgressViewController {
    override func addViews() {
        super.addViews()

    }

    override func layoutViews() {
        super.layoutViews()

    }

    override func configureViews() {
        super.configureViews()

        navigationItem.title = R.Strings.NavBar.Progress.title
        addNavBarButton(at: .left , with: R.Strings.NavBar.Progress.leftBarButton)
        addNavBarButton(at: .right, with: R.Strings.NavBar.Progress.rightBarButton)
    }
}
