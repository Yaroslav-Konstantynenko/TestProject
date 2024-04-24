//
//  ViewController.swift
//  TestProject
//
//  Created by Yaroslav Konstantynenko on 02.04.2024.
//

import UIKit

final class MagneticDetectionController: UIViewController {

    private let mainView = MagneticDetectionView()
    
    private var isAnimating = false
    private var progress: Int = 0
    private var timer: Timer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }
    
    private func configure() {
        view = mainView
        title = "Magnetic Detection"
        navigationController?.navigationBar.configureCustomTitle(font: UIFont(name: "Roboto-Medium", size: 18), color: .white)
        mainView.startAndStopButton.addTarget(self, action: #selector(actionAnimateArrow), for: .touchUpInside)
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
        mainView.configureSearchTitleText(text: "Search checking", isHidden: false)
        
        timer = Timer.scheduledTimer(withTimeInterval: 0.05, repeats: true) { timer in
            if self.progress < 100 {
                self.progress += 1
            }
        }
        
        UIView.animate(withDuration: 5) {
            self.mainView.conteinerView.transform = CGAffineTransform(rotationAngle: .pi / 1)
        }
    }
    
    private func stopAnimation() {
        isAnimating = false
        mainView.startAndStopButton.setTitle("Search", for: .normal)
        mainView.configureSearchTitleText(text: "\(progress) µT", isHidden: false)
        timer?.invalidate()
        
        if let presentationLayer = mainView.conteinerView.layer.presentation() {
            mainView.conteinerView.layer.transform = presentationLayer.transform
        }
        mainView.conteinerView.layer.removeAllAnimations()
        
        Task {
            UIView.animate(withDuration: 1) {
                self.progress = 0
                self.mainView.conteinerView.transform = CGAffineTransform(rotationAngle: 0)
            }
        }
    }
}

