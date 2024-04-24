//
//  Extensions.swift
//  TestProject
//
//  Created by Yaroslav Konstantynenko on 10.04.2024.
//

import UIKit

extension UINavigationBar {
    func configureCustomTitle(font: UIFont?, color: UIColor?, style: UIFont.TextStyle? = nil) {
        var attributes: [NSAttributedString.Key: Any] = [:]
        
        if let font = font {
            attributes[.font] = font
        }

        if let color = color {
            attributes[.foregroundColor] = color
        }

        if let style = style {
            attributes[.font] = UIFont.preferredFont(forTextStyle: style)
        }

        self.titleTextAttributes = attributes
    }
}
