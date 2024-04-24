//
//  AppConfig.swift
//  TestProject
//
//  Created by Yaroslav Konstantynenko on 02.04.2024.
//

import UIKit

enum AppConfig {
    
    struct Colors {
        static let backgroundColor = UIColor.black
        static let conteinerColor = UIColor(named: "conteinerColor")
        static let backgroundSearchButtonColor = UIColor(named: "violetLightColor")
        static let backgroundMenuButtonColor = UIColor(named: "violetColor")
    }
    
    struct Image {
        // Main Image
        static let mainImage = UIImage(named: "MainImage")
        static let backgroundImage = UIImage(named: "BackgroundMainImage")
        
        // Main Buttons
        static let cameraIcon = UIImage(named: "CameraImage")
        static let bluetoothIcon = UIImage(named: "BluetoothImage")
        static let magneticIcon = UIImage(named: "MagneticIcon")
        static let antispyIcon = UIImage(named: "AntispyIcon")
        
        // Indicator Image
        static let magneticBackgroundImage = UIImage(named: "BackgroundMainImage")
        static let magneticImage = UIImage(named: "MagneticImage")
        static let indicator = UIImage(named: "Indicator")
        static let arrow = UIImage(named: "Arrow")
    
        // Connect Image
        static let yesConnetImage = UIImage(named: "connectNo")
        static let noConnectImage = UIImage(named: "connectYes")
    }
}
