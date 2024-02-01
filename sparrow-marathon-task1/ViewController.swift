//
//  ViewController.swift
//  sparrow-marathon-task1
//
//  Created by Nikita Bekish on 01.02.2024.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - Private types
    
    private struct Constants {
        static let rectSide: CGFloat = 100
        static let offset: CGFloat = 100
    }
    
    // MARK: - Private properties
    
    let gradientRoundShadowView = GradientRoundShadowView()
    
    // MARK: - UIViewController lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }

    // MARK: - Private methods
    
    private func setupUI() {
        gradientRoundShadowView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(gradientRoundShadowView)
        
        NSLayoutConstraint.activate([
            gradientRoundShadowView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            gradientRoundShadowView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant:  Constants.offset),
            gradientRoundShadowView.widthAnchor.constraint(equalToConstant: Constants.rectSide),
            gradientRoundShadowView.heightAnchor.constraint(equalToConstant:  Constants.rectSide),
        ])
    }
}

