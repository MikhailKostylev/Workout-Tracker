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
        navigationItem.title = "Workout Progress"
        addNavBarButton(at: .left , with: "Export")
        addNavBarButton(at: .right, with: "Details")
    }
}
