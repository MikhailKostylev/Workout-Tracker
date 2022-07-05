//
//  BaseViewController.swift
//  Workout-Tracker
//
//  Created by Mikhail Kostylev on 04.07.2022.
//

import UIKit

enum NavBarPosition {
    case left
    case right
}

class BaseViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }
}

extension BaseViewController {
    
    func addViews() {}
    
    func layoutViews() {}
    
    func configure() {
        view.backgroundColor = Resources.Colors.background
    }
    
    @objc func navBarLeftButtonHandler() {
        print(#function)
    }
    
    @objc func navBarRightButtonHandler() {
        print(#function)
    }
}

extension BaseViewController {
    
    func addNavBarButton(at position: NavBarPosition, with title: String) {
        let button = UIButton(type: .system)
        button.setTitle(title, for: .normal)
        button.setTitleColor(Resources.Colors.activeBlue, for: .normal)
        button.setTitleColor(Resources.Colors.inactiveGray, for: .disabled)
        button.titleLabel?.font = Resources.Fonts.helveticaRegular(with: 17)
        
        switch position {
        case .left:
            button.addTarget(self, action: #selector(navBarLeftButtonHandler), for: .touchUpInside)
            navigationItem.leftBarButtonItem = UIBarButtonItem(customView: button)
        case .right:
            button.addTarget(self, action: #selector(navBarRightButtonHandler), for: .touchUpInside)
            navigationItem.rightBarButtonItem = UIBarButtonItem(customView: button)
        }
    }
}
