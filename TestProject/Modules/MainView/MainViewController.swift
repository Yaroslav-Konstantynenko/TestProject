//
//  ViewController.swift
//  TestProject
//
//  Created by Yaroslav Konstantynenko on 02.04.2024.
//

import UIKit

class MainViewController: UIViewController {

    private let mainView = MainView()
    var isAnimating = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }
    
    private func configure() {
        mainView.startAndStopButton.addTarget(self, action: #selector(actionAnimateArrow), for: .touchUpInside)
        view = mainView
    }
    
    @objc private func actionAnimateArrow() {
        if isAnimating {
            stopAnimation()
        } else {
            startAnimation()
        }
    }
    
    private func startAnimation() {
        isAnimating = true
        mainView.startAndStopButton.setTitle("Stop", for: .normal)
        
        UIView.animate(withDuration: 5) {
            self.mainView.conteinerView.transform = CGAffineTransform(rotationAngle: .pi / 1)
        }
    }
    
    private func stopAnimation() {
        isAnimating = false
        mainView.startAndStopButton.setTitle("Search", for: .normal)
        if let presentationLayer = mainView.conteinerView.layer.presentation() {
            mainView.conteinerView.layer.transform = presentationLayer.transform
        }
        mainView.conteinerView.layer.removeAllAnimations()
    }
}

