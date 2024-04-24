//
//  MainViewController.swift
//  TestProject
//
//  Created by Yaroslav Konstantynenko on 03.04.2024.
//

import UIKit

final class MainViewController: UIViewController {

    private var mainView = MainView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }
    
    private func configure() {
        mainView.scanButton.addTarget(self, action: #selector(scanNetwork), for: .touchUpInside)
        mainView.magneticButton.addTarget(self, action: #selector(tupMagneticDetection), for: .touchUpInside)
        navigationItem.backButtonTitle = "Main"
        view = mainView
    }
    
    @objc private func scanNetwork() {
        let vc = ResultController()
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @objc private func tupMagneticDetection() {
        let vc = MagneticDetectionController()
        navigationController?.pushViewController(vc, animated: true)
    }
}
