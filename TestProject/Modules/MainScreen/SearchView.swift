//
//  SearchView.swift
//  TestProject
//
//  Created by Yaroslav Konstantynenko on 12.04.2024.
//

import UIKit
import SnapKit
import Lottie

final class SearchView: UIView {
    
    private lazy var scanningLabel: UILabel = {
        let obj = UILabel()
        obj.text = "Scanning Your Wi-Fi"
        obj.textAlignment = .center
        obj.textColor = .white
        obj.font = UIFont(name: "Roboto-Medium", size: 14)
        return obj
    }()
    
    private lazy var nameLabel: UILabel = {
        let obj = UILabel()
        obj.text = "TLind_246_lp"
        obj.textAlignment = .center
        obj.textColor = #colorLiteral(red: 0.4268256724, green: 0.3484946489, blue: 0.8276101947, alpha: 1)
        obj.font = UIFont(name: "Roboto-Medium", size: 28)
        return obj
    }()
    
    lazy var animationView: LottieAnimationView = {
        let obj = LottieAnimationView(name: "hc6 s")
        obj.contentMode = .scaleAspectFit
        return obj
    }()
    
    private lazy var percentLabel: UILabel = {
        let obj = UILabel()
        obj.text = "20 %"
        obj.textAlignment = .center
        obj.textColor = .white
        obj.font = UIFont(name: "Roboto-Medium", size: 14)
        return obj
    }()
    
    private lazy var countLabel: UILabel = {
        var obj = UILabel()
        obj.textColor = #colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)
        obj.text = "23"
        obj.font = UIFont(name: "Roboto-Medium", size: 24)
        obj.textAlignment = .center
        obj.numberOfLines = 1
        return obj
    }()
    
    private lazy var devicesLabel: UILabel = {
        var obj = UILabel()
        obj.text = "Devices Found..."
        obj.textColor = .white
        obj.font = UIFont(name: "Roboto-Medium", size: 16)
        obj.textAlignment = .center
        obj.numberOfLines = 1
        return obj
    }()
    
    private lazy var stackView: UIStackView = {
        let obj = UIStackView()
        obj.axis = .horizontal
        return obj
    }()
    
    lazy var stopButton: UIButton = {
        let obj = UIButton()
        obj.backgroundColor = AppConfig.Colors.backgroundSearchButtonColor
        obj.layer.cornerRadius = 25
        obj.setTitle("Stop", for: .normal)
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
        
        addSubview(scanningLabel)
        addSubview(nameLabel)
        
        addSubview(animationView)
        animationView.addSubview(percentLabel)
        
        addSubview(stackView)
        stackView.addArrangedSubview(countLabel)
        stackView.addArrangedSubview(devicesLabel)
        
        addSubview(stopButton)
    }
    
    private func makeConstraints() {
        scanningLabel.snp.makeConstraints { make in
            make.top.equalTo(safeAreaLayoutGuide).offset(20)
            make.horizontalEdges.equalToSuperview().inset(20)
            make.height.equalTo(18)
        }
        
        nameLabel.snp.makeConstraints { make in
            make.top.equalTo(scanningLabel.snp.bottom).offset(5)
            make.horizontalEdges.equalToSuperview().inset(20)
            make.height.equalTo(34)
        }
        
        animationView.snp.makeConstraints { make in
            make.height.width.equalTo(340)
            make.center.equalToSuperview()
        }
        
        percentLabel.snp.makeConstraints { make in
            make.center.equalToSuperview()
            make.height.equalTo(18)
            make.width.equalTo(30)
        }
        
        stackView.snp.makeConstraints { make in
            make.top.equalTo(animationView.snp.bottom).offset(30)
            make.horizontalEdges.equalToSuperview().inset(105)
            make.height.equalTo(30)
        }
        
        stopButton.snp.makeConstraints { make in
            make.horizontalEdges.equalToSuperview().inset(20)
            make.height.equalTo(50)
            make.bottom.equalToSuperview().offset(-50)
        }
    }
    
    func setTile(count: String) {
        countLabel.text = count
    }
}
