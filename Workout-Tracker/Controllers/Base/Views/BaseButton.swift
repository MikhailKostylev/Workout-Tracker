//
//  BaseButton.swift
//  Workout-Tracker
//
//  Created by Mikhail Kostylev on 06.07.2022.
//

import UIKit

public enum BaseButtonType: Int {
    case primary
    case secondary
}

final class BaseButton: UIButton {
    
    private var type: BaseButtonType = .primary
    
    private let cornerRadius: CGFloat = 14
    private let iconWidth: CGFloat = 10
    private let iconHeight: CGFloat = 5
    private let padding: CGFloat = 10
    
    private lazy var label: UILabel = {
        let lable = UILabel()
        lable.textAlignment = .center
        return lable
    }()
    
    private lazy var iconView: UIImageView = {
        let view = UIImageView()
        view.image = R.Images.NavBar.allWorkoutsButtonIcon?.withRenderingMode(.alwaysTemplate)
        return view
    }()
    
    init(with type: BaseButtonType) {
        super.init(frame: .zero)        
        self.type = type
        
        addViews()
        layoutViews()
        configure()
    }
    
    required init?(coder: NSCoder) {
        super.init(frame: .zero)
        
        addViews()
        layoutViews()
        configure()
    }
    
    func setTitle(_ title: String?) {
        label.text = title
    }
}

private extension BaseButton {
    
    func addViews() {
        addView(label)
        addView(iconView)
    }
    
    func layoutViews() {
        
        var horizontalOffset: CGFloat {
            switch type {
            case .primary: return 0
            case .secondary: return 10
            }
        }
        
        let constraints = [
            iconView.centerYAnchor.constraint(equalTo: centerYAnchor),
            iconView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -horizontalOffset),
            iconView.heightAnchor.constraint(equalToConstant: iconHeight),
            iconView.widthAnchor.constraint(equalToConstant: iconWidth),
            
            label.centerYAnchor.constraint(equalTo: centerYAnchor),
            label.trailingAnchor.constraint(equalTo: iconView.leadingAnchor, constant: -padding),
            label.leadingAnchor.constraint(equalTo: leadingAnchor, constant: horizontalOffset * 2)
        ]
        
        NSLayoutConstraint.activate(constraints)
    }
    
    func configure() {
        switch type {
        case .primary:
            label.textColor = R.Colors.inactiveGray
            label.font = R.Fonts.helveticaRegular(with: 13)
            iconView.tintColor = R.Colors.inactiveGray
        case .secondary:
            backgroundColor = R.Colors.secondary
            layer.cornerRadius = cornerRadius
            label.textColor = R.Colors.activeBlue
            label.font = R.Fonts.helveticaRegular(with: 15)
            iconView.tintColor = R.Colors.activeBlue
        }
        
        makeButtonHighlighted(self)
    }
}
