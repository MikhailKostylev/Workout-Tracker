//
//  NavBarController.swift
//  Workout-Tracker
//
//  Created by Mikhail Kostylev on 05.07.2022.
//

import UIKit

final class NavBarController: UINavigationController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }
    
    private func configure() {
        view.backgroundColor = .systemBackground
        navigationBar.isTranslucent = false
        navigationBar.standardAppearance.titleTextAttributes = [
            .foregroundColor: Resources.Colors.titleGray,
            .font: Resources.Fonts.helveticaRegular(with: 17)
        ]
        
        navigationBar.addButtonBorder(with: Resources.Colors.separator, height: 1)
    }
}