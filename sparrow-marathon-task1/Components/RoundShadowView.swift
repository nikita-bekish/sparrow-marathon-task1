//
//  RoundShadowView.swift
//  sparrow-marathon-task1
//
//  Created by Nikita Bekish on 01.02.2024.
//

import UIKit

class GradientRoundShadowView: UIView {
    
    // MARK: - Private types
    
    private struct Constants {
        static let corner: CGFloat = 16
    }
    
    // MARK: - Private properties
    
    private var shadowLayer: CAShapeLayer?
        
    // MARK: - UIView methods
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        applyGradient()
        
        guard shadowLayer == nil else { return }
        
        applyShadow()
    }
    
    // MARK: - Private methods
    
    private func applyShadow() {
        shadowLayer = CAShapeLayer()
        
        guard let shadowLayer = shadowLayer else { return }

        shadowLayer.path = UIBezierPath(roundedRect: bounds, cornerRadius: Constants.corner).cgPath
        shadowLayer.fillColor = UIColor.clear.cgColor
        
        shadowLayer.shadowColor = UIColor.darkGray.cgColor
        shadowLayer.shadowPath = shadowLayer.path
        shadowLayer.shadowOffset = CGSize(width: 4, height: 4)
        shadowLayer.shadowOpacity = 0.8
        shadowLayer.shadowRadius = 4
        
        layer.insertSublayer(shadowLayer, at: 0)
    }
    
    private func applyGradient() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = bounds
        gradientLayer.cornerRadius = Constants.corner
        gradientLayer.colors = [UIColor.blue.cgColor, UIColor.red.cgColor]
        gradientLayer.locations = [0.0, 1.0]
        gradientLayer.startPoint = CGPoint(x: 0.5, y: 0.0)
        gradientLayer.endPoint = CGPoint(x: 0.5, y: 1.0)

        layer.addSublayer(gradientLayer)
    }
}
