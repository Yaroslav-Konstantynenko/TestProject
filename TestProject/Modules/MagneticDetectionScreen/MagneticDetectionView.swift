//
//  MainView.swift
//  TestProject
//
//  Created by Yaroslav Konstantynenko on 02.04.2024.
//

import UIKit
import SnapKit

final class MagneticDetectionView: UIView {
    
    private lazy var backgroundImage: UIImageView = {
        let obj = UIImageView()
        obj.image = AppConfig.Image.backgroundImage
        obj.contentMode = .scaleAspectFill
        return obj
    }()
    
    private lazy var mainImage: UIImageView = {
        let obj = UIImageView()
        obj.image = AppConfig.Image.magneticImage
        obj.contentMode = .scaleAspectFit
        return obj
    }()
    
    private lazy var indicator: UIImageView = {
        let obj = UIImageView()
        obj.image = AppConfig.Image.indicator
        obj.contentMode = .scaleAspectFit
        return obj
    }()
    
    lazy var conteinerView: UIView = {
        let obj = UIView()
        obj.backgroundColor = #colorLiteral(red: 0.8824192882, green: 0.8599206805, blue: 1, alpha: 1)
        obj.layer.cornerRadius = 16
        return obj
    }()
    
    lazy var arrow: UIImageView = {
        let obj = UIImageView()
        obj.image = AppConfig.Image.arrow
        obj.contentMode = .scaleAspectFit
        return obj
    }()
    
    private lazy var textSearchLabel: UILabel = {
        let obj = UILabel()
        obj.textColor = .white
        obj.font =  UIFont(name: "Roboto-Medium", size: 20)
        obj.textAlignment = .center
        obj.isHidden = true
        return obj
    }()
    
    lazy var startAndStopButton: UIButton = {
        let obj = UIButton()
        obj.backgroundColor = AppConfig.Colors.backgroundSearchButtonColor
        obj.layer.cornerRadius = 25
        obj.setTitle("Search", for: .normal)
        return obj
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureView()
        makeConstraints()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
    }
    
    private func configureView() {
        backgroundColor = AppConfig.Colors.backgroundColor
        
        addSubview(backgroundImage)
        backgroundImage.addSubview(mainImage)
        
        addSubview(indicator)
        addSubview(conteinerView)
        
        conteinerView.addSubview(arrow)
        addSubview(textSearchLabel)
        addSubview(startAndStopButton)
    }
    
    private func makeConstraints() {
        
        backgroundImage.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(30)
            make.horizontalEdges.equalToSuperview().inset(0)
            make.height.equalToSuperview().multipliedBy(0.36)
        }
        
        mainImage.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(30)
            make.horizontalEdges.equalToSuperview().inset(30)
            make.bottom.equalToSuperview()
        }
        
        indicator.snp.makeConstraints { make in
            make.top.equalTo(mainImage.snp.bottom).offset(35)
            make.horizontalEdges.equalToSuperview().inset(10)
            make.height.equalToSuperview().multipliedBy(0.3)
        }
        
        conteinerView.snp.makeConstraints { make in
            make.width.height.equalTo(32)
            make.centerY.equalTo(indicator).offset(85)
            make.centerX.equalTo(indicator)
        }
        
        arrow.snp.makeConstraints { make in
            make.height.equalTo(30)
            make.width.equalTo(100)
            make.top.equalTo(conteinerView.snp.top).offset(0)
            make.trailing.equalTo(conteinerView.snp.trailing).offset(-20)
        }
        
        textSearchLabel.snp.makeConstraints { make in
            make.top.equalTo(conteinerView.snp.bottom).offset(20)
            make.horizontalEdges.equalToSuperview().inset(20)
            make.height.equalTo(24)
        }
        
        startAndStopButton.snp.makeConstraints { make in
            make.bottom.equalToSuperview().offset(-56)
            make.horizontalEdges.equalToSuperview().inset(10)
            make.height.equalTo(50)
        }
    }
    
    func configureSearchTitleText(text: String, isHidden: Bool) {
        textSearchLabel.text = text
        textSearchLabel.isHidden = isHidden
    }
}
