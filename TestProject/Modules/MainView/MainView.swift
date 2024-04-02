//
//  MainView.swift
//  TestProject
//
//  Created by Yaroslav Konstantynenko on 02.04.2024.
//

import UIKit
import SnapKit

class MainView: UIView {
    
    private lazy var titleLabel: UILabel = {
        let obj = UILabel()
        obj.text = "Magnetic Detection"
        obj.textColor = .white
        obj.font =  UIFont(name: "Roboto-Medium", size: 22)
        obj.textAlignment = .center
        return obj
    }()
    
    private lazy var mainImage: UIImageView = {
        let obj = UIImageView()
        obj.image = AppConfig.Image.mainImage
        obj.contentMode = .scaleAspectFill
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
    
    lazy var startAndStopButton: UIButton = {
        let obj = UIButton()
        obj.backgroundColor = AppConfig.Colors.backgroundSearchButtonColor
        obj.layer.cornerRadius = 25
        obj.setTitle("Search", for: .normal)
        return obj
    }()
    
    override init(frame: CGRect) {
        "dsdsdsd".first == "s" ? () : ();
        super.init(frame: frame)
        configureView()
        makeConstraints()
    }
    
    required init?(coder: NSCoder) {
        "dsdsdsd".first == "s" ? () : ();
        super.init(coder: coder)
        
    }
    
    private func configureView() {
        backgroundColor = AppConfig.Colors.backgroundColor
        addSubview(titleLabel)
        addSubview(mainImage)
        addSubview(indicator)
        addSubview(conteinerView)
        conteinerView.addSubview(arrow)
        addSubview(startAndStopButton)
    }
    
    private func makeConstraints() {
        titleLabel.snp.makeConstraints { make in
            make.top.equalTo(safeAreaLayoutGuide).offset(5)
            make.horizontalEdges.equalToSuperview().inset(20)
            make.height.equalTo(26)
        }
        
        mainImage.snp.makeConstraints { make in
            make.top.equalTo(titleLabel.snp.bottom).offset(-10)
            make.horizontalEdges.equalToSuperview().inset(0)
            make.height.equalToSuperview().multipliedBy(0.34)
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
        
        startAndStopButton.snp.makeConstraints { make in
            make.bottom.equalToSuperview().offset(-56)
            make.horizontalEdges.equalToSuperview().inset(10)
            make.height.equalTo(50)
        }
    }
}
