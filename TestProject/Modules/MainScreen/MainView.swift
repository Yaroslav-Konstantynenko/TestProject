//
//  MainView.swift
//  TestProject
//
//  Created by Yaroslav Konstantynenko on 03.04.2024.
//

import UIKit
import SnapKit

final class MainView: UIView {

    private lazy var mainImage: UIImageView = {
        let obj = UIImageView()
        obj.image = AppConfig.Image.mainImage
        return obj
    }()
    
    private lazy var conteinerTitleView: UIView = {
        let obj = UIView()
        obj.backgroundColor = #colorLiteral(red: 0.06235808879, green: 0.05093447119, blue: 0.1716979444, alpha: 1)
        obj.layer.cornerRadius = 12
        return obj
    }()
    
    private lazy var connectLabel: UILabel = {
        let obj = UILabel()
        obj.text = "Current Wi-Fi"
        obj.textAlignment = .center
        obj.textColor = .white
        obj.font = UIFont(name: "Roboto-Medium", size: 14)
        return obj
    }()
    
    private lazy var wifiNameLabel: UILabel = {
        let obj = UILabel()
        obj.text = "WIFI_Name"
        obj.textAlignment = .center
        obj.textColor = #colorLiteral(red: 0.4268256724, green: 0.3484946489, blue: 0.8276101947, alpha: 1)
        obj.font = UIFont(name: "Roboto-Medium", size: 28)
        return obj
    }()
    
    private lazy var scanLabel: UILabel = {
        let obj = UILabel()
        obj.text = "Ready to Scan this network"
        obj.textAlignment = .center
        obj.textColor = #colorLiteral(red: 0.3203088045, green: 0.3464637399, blue: 0.4709563851, alpha: 1)
        obj.font = UIFont(name: "Roboto-Medium", size: 14)
        return obj
    }()
    
    lazy var scanButton: UIButton = {
        let obj = UIButton()
        obj.backgroundColor = AppConfig.Colors.backgroundSearchButtonColor
        obj.layer.cornerRadius = 25
        obj.setTitle("Scan current network", for: .normal)
        return obj
    }()
    
    private lazy var conteinerButtonView: UIView = {
        let obj = UIView()
        return obj
    }()
    
    lazy var infrareduttonButton: CustomButton = {
        let obj = CustomButton()
        obj.setImage(AppConfig.Image.cameraIcon)
        obj.setTitle("Infrared Detection", for: .normal)
        obj.layer.cornerRadius = 12
        return obj
    }()
    
    lazy var bluetoothButton: CustomButton = {
        let obj = CustomButton()
        obj.setImage(AppConfig.Image.bluetoothIcon)
        obj.setTitle("Bluetooth Detection", for: .normal)
        obj.layer.cornerRadius = 12
        return obj
    }()
    
    lazy var magneticButton: CustomButton = {
        let obj = CustomButton()
        obj.setImage(AppConfig.Image.magneticIcon)
        obj.setTitle("Magnetic Detection", for: .normal)
        obj.layer.cornerRadius = 12
        return obj
    }()
    
    lazy var antispyButton: CustomButton = {
        let obj = CustomButton()
        obj.setImage(AppConfig.Image.antispyIcon)
        obj.setTitle("Antispy Tips", for: .normal)
        obj.layer.cornerRadius = 12
        return obj
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureView_LEW()
        makeConstraints()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    private func configureView_LEW() {
        addSubview(mainImage)
        
        addSubview(conteinerTitleView)
        conteinerTitleView.addSubview(connectLabel)
        conteinerTitleView.addSubview(wifiNameLabel)
        conteinerTitleView.addSubview(scanLabel)
        conteinerTitleView.addSubview(scanButton)
        
        addSubview(infrareduttonButton)
        addSubview(bluetoothButton)
        addSubview(magneticButton)
        addSubview(antispyButton)
    }
    
    private func makeConstraints() {
        mainImage.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(-20)
            make.horizontalEdges.equalToSuperview()
            make.height.equalToSuperview().multipliedBy(0.36)
        }
        
        conteinerTitleView.snp.makeConstraints { make in
            make.top.equalTo(mainImage.snp.bottom).offset(-10)
            make.horizontalEdges.equalToSuperview().inset(15)
            make.height.equalToSuperview().multipliedBy(0.20)
        }
        
        connectLabel.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(15)
            make.horizontalEdges.equalToSuperview().inset(10)
            make.height.equalTo(16)
        }
        
        wifiNameLabel.snp.makeConstraints { make in
            make.top.equalTo(connectLabel.snp.bottom).offset(5)
            make.horizontalEdges.equalToSuperview().inset(10)
            make.height.equalTo(30)
        }
        
        scanLabel.snp.makeConstraints { make in
            make.top.equalTo(wifiNameLabel.snp.bottom).offset(10)
            make.horizontalEdges.equalToSuperview().inset(10)
            make.height.equalTo(18)
        }
        
        scanButton.snp.makeConstraints { make in
            make.top.equalTo(scanLabel.snp.bottom).offset(5)
            make.horizontalEdges.equalToSuperview().inset(10)
            make.height.equalTo(50)
        }
        
        infrareduttonButton.snp.makeConstraints { make in
            make.top.equalTo(conteinerTitleView.snp.bottom).offset(15)
            make.leading.equalToSuperview().offset(35)
            make.height.width.equalTo(140)
        }
        
        bluetoothButton.snp.makeConstraints { make in
            make.top.equalTo(conteinerTitleView.snp.bottom).offset(15)
            make.trailing.equalToSuperview().offset(-35)
            make.height.width.equalTo(infrareduttonButton)
        }
        
        magneticButton.snp.makeConstraints { make in
            make.top.equalTo(infrareduttonButton.snp.bottom).offset(22)
            make.leading.equalToSuperview().offset(35)
            make.height.width.equalTo(infrareduttonButton)
        }
        
        antispyButton.snp.makeConstraints { make in
            make.top.equalTo(bluetoothButton.snp.bottom).offset(22)
            make.trailing.equalToSuperview().offset(-35)
            make.height.width.equalTo(infrareduttonButton)
        }
    }
}
