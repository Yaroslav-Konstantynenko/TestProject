//
//  ResultController.swift
//  TestProject
//
//  Created by Yaroslav Konstantynenko on 12.04.2024.
//

import UIKit

final class ResultController: UIViewController {
    
    private var mainView = SearchView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        configure()
    }
    
    private func configure() {
        view = mainView
        mainView.animationView.play(fromProgress: 0.0, toProgress: 0.5, loopMode: .loop)
        mainView.stopButton.addTarget(self, action: #selector(stopAction), for: .touchUpInside)
    }
    
    @objc private func stopAction() {
        mainView.animationView.stop()
    }
}
