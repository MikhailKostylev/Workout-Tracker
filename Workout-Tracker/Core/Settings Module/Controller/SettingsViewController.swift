//
//  SettingsViewController.swift
//  Workout-Tracker
//
//  Created by Mikhail Kostylev on 05.07.2022.
//

import UIKit

class SettingsViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupVC()
    }
    
    private func setupVC() {
        navigationItem.title = Resources.Strings.NavBar.Settings.title
    }
}
