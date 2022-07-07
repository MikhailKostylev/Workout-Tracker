//
//  OverviewNavBar.swift
//  Workout-Tracker
//
//  Created by Mikhail Kostylev on 07.07.2022.
//

import UIKit

final class OverviewNavBar: BaseView {
    
    private let padding: CGFloat = 15
    private let addButtonSize: CGFloat = 28
    private let allWorkoutsButtonHeight: CGFloat = 28
    private let allWorkoutsButtonWidth: CGFloat = 130
    private let weekViewHeight: CGFloat = 47
    
    private lazy var titleLabel = UILabel()
    private lazy var allWorkoutsButton = SecondaryButton()
    private lazy var addButton = UIButton()
    
    private lazy var weekView: UIView = {
        let view = UIView()
        view.backgroundColor = .systemBlue.withAlphaComponent(0.2)
        return view
    }()
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        addBottomBorder(with: Resources.Colors.separator, height: 1)
    }
    
    func addAllWorkoutsAction(_ action: Selector, with target: Any?) {
        allWorkoutsButton.addTarget(target, action: action, for: .touchUpInside)
    }
    
    func addAdditingAction(_ action: Selector, with target: Any?) {
        addButton.addTarget(target, action: action, for: .touchUpInside)
    }
}

extension OverviewNavBar {
    
    override func addViews() {
        super.addViews()
        
        addView(titleLabel)
        addView(allWorkoutsButton)
        addView(addButton)
        addView(weekView)
    }
    
    override func layoutViews() {
        super.layoutViews()
        
        let constraints = [
            addButton.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: padding/2),
            addButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -padding),
            addButton.heightAnchor.constraint(equalToConstant: addButtonSize),
            addButton.widthAnchor.constraint(equalToConstant: addButtonSize),
            
            allWorkoutsButton.topAnchor.constraint(equalTo: addButton.topAnchor),
            allWorkoutsButton.trailingAnchor.constraint(equalTo: addButton.leadingAnchor, constant: -padding),
            allWorkoutsButton.heightAnchor.constraint(equalToConstant: allWorkoutsButtonHeight),
            allWorkoutsButton.widthAnchor.constraint(equalToConstant: allWorkoutsButtonWidth),
            
            titleLabel.centerYAnchor.constraint(equalTo: allWorkoutsButton.centerYAnchor),
            titleLabel.trailingAnchor.constraint(equalTo: allWorkoutsButton.leadingAnchor),
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: padding),
            
            weekView.topAnchor.constraint(equalTo: addButton.bottomAnchor, constant: padding),
            weekView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: padding),
            weekView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -padding),
            weekView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -padding),
            weekView.heightAnchor.constraint(equalToConstant: weekViewHeight)
        ]
        
        NSLayoutConstraint.activate(constraints)
    }
    
    override func configure() {
        super.configure()
        
        backgroundColor = .white
        
        titleLabel.text = Resources.Strings.NavBar.Overview.title
        titleLabel.textColor = Resources.Colors.titleGray
        titleLabel.font = Resources.Fonts.helveticaRegular(with: 22)
        allWorkoutsButton.setTitle(Resources.Strings.NavBar.Overview.allWorkoutsButtonTitle)
        addButton.setImage(Resources.Images.NavBar.addButton, for: .normal)
    }
}
