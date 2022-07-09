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
    
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.text = R.Strings.NavBar.Overview.title
        label.textColor = R.Colors.titleGray
        label.font = R.Fonts.helveticaRegular(with: 22)
        return label
    }()

    private lazy var allWorkoutsButton: BaseButton = {
        let button = BaseButton(with: .secondary)
        button.setTitle(R.Strings.NavBar.Overview.allWorkoutsButtonTitle)
        return button
    }()

    private lazy var addButton: UIButton = {
        let button = UIButton()
        button.setImage(R.Images.NavBar.addButton, for: .normal)
        return button
    }()
    
    private lazy var weekView = WeekView()
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        addBottomBorder(with: R.Colors.separator, height: 1)
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
//            allWorkoutsButton.widthAnchor.constraint(equalToConstant: allWorkoutsButtonWidth),
            
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
}
