//
//  WeekdayView.swift
//  Workout-Tracker
//
//  Created by Mikhail Kostylev on 08.07.2022.
//

import UIKit

extension WeekView {
    final class WeekdayView: BaseView {
        
        private lazy var nameLabel = UILabel()
        private lazy var dateLabel = UILabel()
        private lazy var stackView = UIStackView()
        
        func configure(with index: Int, and name: String) {
            let startOfWeek = Date().startOfWeek
            let currentDay = startOfWeek.goForward(to: index)
            let day = Calendar.current.component(.day, from: currentDay)
            
            let isTooday = currentDay.stripTime() == Date().stripTime()
            backgroundColor = isTooday ? R.Colors.activeBlue : R.Colors.background
            
            nameLabel.text = name.uppercased()
            nameLabel.textColor = isTooday ? .white : R.Colors.inactiveGray
            
            dateLabel.text = "\(day)"
            dateLabel.textColor = isTooday ? .white : R.Colors.inactiveGray
        }
    }
}

extension WeekView.WeekdayView {
    
    override func addViews() {
        super.addViews()
        
        addView(stackView)
        stackView.addArrangedSubview(nameLabel)
        stackView.addArrangedSubview(dateLabel)
    }
    
    override func layoutViews() {
        super.layoutViews()
        
        let constraints = [
            stackView.centerXAnchor.constraint(equalTo: centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: centerYAnchor)
        ]

        NSLayoutConstraint.activate(constraints)
    }
    
    override func configureViews() {
        super.configureViews()
        
        layer.cornerRadius = 5
        layer.masksToBounds = true
        
        nameLabel.font = R.Fonts.helveticaRegular(with: 9)
        nameLabel.textAlignment = .center
        
        dateLabel.font = R.Fonts.helveticaRegular(with: 15)
        dateLabel.textAlignment = .center
        
        stackView.axis = .vertical
        stackView.spacing = 3
        stackView.distribution = .equalCentering
    }
}
