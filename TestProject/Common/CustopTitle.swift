//
//  CustopTitle.swift
//  TestProject
//
//  Created by Yaroslav Konstantynenko on 12.04.2024.
//

import UIKit
import SnapKit

final class CustomTitle: UILabel {
    
    private lazy var countLabel: UILabel = {
        var obj = UILabel()
        obj.textColor = #colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)
        obj.font = UIFont(name: "Roboto-Medium", size: 24)
        obj.textAlignment = .center
        obj.numberOfLines = 1
        return obj
    }()
    
    private lazy var titleLabel: UILabel = {
        var obj = UILabel()
        obj.text = "Devices Found..."
        obj.textColor = .white
        obj.font = UIFont(name: "Roboto-Medium", size: 16)
        obj.textAlignment = .center
        obj.numberOfLines = 1
        return obj
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configureView() {
        
    }
    
    func setTile(count: String) {
        countLabel.text = count
    }
}
