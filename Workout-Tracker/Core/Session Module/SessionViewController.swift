//
//  SessionViewController.swift
//  Workout-Tracker
//
//  Created by Mikhail Kostylev on 05.07.2022.
//

import UIKit

final class SessionViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupVC()
    }
    
    private func setupVC() {
        navigationItem.title = "High Intensity Cardio"
        addNavBarButton(at: .left , with: "Pause")
        addNavBarButton(at: .right, with: "Finish")
    }
}

