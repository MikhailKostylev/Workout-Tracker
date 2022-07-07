//
//  SecondaryButton.swift
//  Workout-Tracker
//
//  Created by Mikhail Kostylev on 06.07.2022.
//

import UIKit

final class SecondaryButton: UIButton {
    
    private let cornerRadius: CGFloat = 14
    private let labelSize: CGFloat = 15
    private let iconWidth: CGFloat = 10
    private let iconHeight: CGFloat = 5
    private let padding: CGFloat = 10
    
    private lazy var label = UILabel()
    private lazy var iconView = UIImageView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addViews()
        layoutViews()
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setTitle(_ title: String) {
        label.text = title
    }
}

private extension SecondaryButton {
    
    func addViews() {
        addView(label)
        addView(iconView)
    }
    
    func layoutViews() {
        
        let constraints = [
            iconView.centerYAnchor.constraint(equalTo: centerYAnchor),
            iconView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -padding),
            iconView.heightAnchor.constraint(equalToConstant: iconHeight),
            iconView.widthAnchor.constraint(equalToConstant: iconWidth),
            
            label.centerYAnchor.constraint(equalTo: centerYAnchor),
            label.trailingAnchor.constraint(equalTo: iconView.leadingAnchor),
            label.leadingAnchor.constraint(equalTo: leadingAnchor, constant: padding)
        ]
        
        NSLayoutConstraint.activate(constraints)
    }
    
    func configure() {
        backgroundColor = Resources.Colors.secondary
        layer.cornerRadius = cornerRadius
        makeButtonHighlighted(self)

        label.textColor = Resources.Colors.activeBlue
        label.textAlignment = .center
        label.font = Resources.Fonts.helveticaRegular(with: labelSize)
        
        iconView.image = Resources.Images.NavBar.allWorkoutsButtonIcon?.withRenderingMode(.alwaysTemplate)
        iconView.tintColor = Resources.Colors.activeBlue
    }
}
