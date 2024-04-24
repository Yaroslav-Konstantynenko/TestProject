//
//  CustomButton.swift
//  TestProject
//
//  Created by Yaroslav Konstantynenko on 06.04.2024.
//

import UIKit
import SnapKit

class CustomButton: UIButton {
    
    private lazy var title: UILabel = {
        var obj = UILabel()
        obj.textColor = .white
        obj.font = UIFont(name: "Roboto-Medium", size: 18)
        obj.textAlignment = .center
        obj.numberOfLines = 2
        return obj
    }()
    
    private lazy var stateImage: UIImageView = {
        var obj = UIImageView()
        obj.contentMode = .scaleAspectFit
        return obj
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureViewButton()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func setTitle(_ title: String?, for state: UIControl.State) {
        self.title.text = title
    }
    
    func setImage(_ image: UIImage?) {
        self.stateImage.image = image
    }
    
    private func configureViewButton() {
        backgroundColor = AppConfig.Colors.backgroundMenuButtonColor
        addSubview(title)
        addSubview(stateImage)
        
        stateImage.snp.remakeConstraints { make in
            make.top.equalToSuperview().offset(20)
            make.horizontalEdges.equalToSuperview().inset(4)
            make.height.equalTo(44)
        }
        title.snp.remakeConstraints { make in
            make.top.equalTo(stateImage.snp.bottom).offset(15)
            make.horizontalEdges.equalToSuperview().inset(25)
        }
    }
}
