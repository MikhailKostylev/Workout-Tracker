//
//  ProgressView.swift
//  Workout-Tracker
//
//  Created by Mikhail Kostylev on 10.07.2022.
//

import UIKit

extension TimerView{
    final class ProgressView: UIView {
        
        func drawProgress(with percent: CGFloat) {
            let circleFrame = UIScreen.main.bounds.width - (15 + 40) * 2
            let radius = circleFrame / 2
            let center = CGPoint(x: radius, y: radius)
            let startAngle = -CGFloat.pi * 7.5 / 6
            let endAngle = CGFloat.pi * 1.5 / 6
            
            let circlePass = UIBezierPath(
                arcCenter: center,
                radius: radius,
                startAngle: startAngle,
                endAngle: endAngle,
                clockwise: true)
            
            let circleLayer = CAShapeLayer()
            circleLayer.path = circlePass.cgPath
            circleLayer.strokeColor = R.Colors.activeBlue.cgColor
            circleLayer.lineWidth = 20
            circleLayer.strokeEnd = percent
            circleLayer.fillColor = UIColor.clear.cgColor
            circleLayer.lineCap = .round
            
            layer.addSublayer(circleLayer)
        }
    }
}
