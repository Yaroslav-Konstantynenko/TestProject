//
//  MainViewController.swift
//  TestProject
//
//  Created by Yaroslav Konstantynenko on 03.04.2024.
//

import UIKit

final class MainViewController: UIViewController {

    private let mainView = MainView()
    override func viewDidLoad() {
        super.viewDidLoad()
        view = mainView
    }
}
