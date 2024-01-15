//
//  FifthViewController.swift
//  hw_1_4
//
//  Created by Erma on 14/1/24.
//

import UIKit
import SnapKit


class FifthViewController:UIViewController{
    
    private lazy var successImage:UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "successImage")
        view.contentMode = .scaleAspectFill
        return view
    }()
    
    private lazy var successLabel:UILabel = {
        let view = UILabel()
        view.font = .systemFont(ofSize: 23,weight: .bold)
        view.text = "Success"
        view.textColor = .init(hex: "#FFFFFF")
        return view
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    private func setupUI(){
        view.backgroundColor = .init(hex: "#4AC6E9")
        
        view.addSubview(successImage)
        view.addSubview(successLabel)
        
        successImage.snp.makeConstraints { make in
            make.centerX.centerY.equalToSuperview()
            make.width.height.equalTo(183)
        }
        
        successLabel.snp.makeConstraints { make in
            make.top.equalTo(successImage.snp.bottom).offset(24)
            make.centerX.equalToSuperview()
        }
    }
}
