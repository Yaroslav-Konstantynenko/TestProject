//
//  test.swift
//  TestProject
//
//  Created by Yaroslav Konstantynenko on 24.06.2024.
//

import Foundation
import UIKit

class ViewController: UIViewController {

    var imageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Создаем UIImageView с изображением
        let image = UIImage(named: "yourImageName") // Замените "yourImageName" на название вашего изображения
        imageView = UIImageView(image: image)
        
        // Устанавливаем начальный размер и центрируем изображение
        imageView.frame = CGRect(x: 0, y: 0, width: 300, height: 300)
        imageView.center = view.center
        imageView.isUserInteractionEnabled = true // Включаем взаимодействие с пользователем
        
        view.addSubview(imageView)
        
        // Добавляем жест для масштабирования
        let pinchGesture = UIPinchGestureRecognizer(target: self, action: #selector(handlePinch(_:)))
        imageView.addGestureRecognizer(pinchGesture)
    }
    
    // Обработка жеста масштабирования
    @objc func handlePinch(_ sender: UIPinchGestureRecognizer) {
        guard let view = sender.view else { return }
        view.transform = view.transform.scaledBy(x: sender.scale, y: sender.scale)
        sender.scale = 1.0
    }
}
