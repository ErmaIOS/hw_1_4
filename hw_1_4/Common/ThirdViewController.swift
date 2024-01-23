//
//  ThirdViewController.swift
//  hw_1_4
//
//  Created by Erma on 15/1/24.
//

import UIKit

class ThirdViewController: UIViewController {
    
    private lazy var lockImage = MakeView.shared.makerImage(imageName: "lockImage",imageBackgroundColor: UIColor.init(hex: "#4AC6E9"), imageTintColor: UIColor.init(hex: "#A8A8A8"))
    
    private lazy var idTF = MakeView.shared.makerTF(tfPlaceholder: "Enter Your Id",tfCornerRadius: 10,tfBackgroundColor: UIColor.init(hex: "#787878"), tfTextSize: 15, tfTextColor: UIColor.init(hex: "#E1E3E8"))
    
    private lazy var whiteView = MakeView.shared.makerView(viewBackgroundColor: UIColor.init(hex: "#FFFFFF"),viewCornerRadius: 32)
    
    private lazy var newPasswordLabel = MakeView.shared.makerLabel(text: "New Password",textColor: UIColor.init(hex: "#A5A5A5"),textSize: 12)
    
    private lazy var newPasswordTF: UITextField = MakeView.shared.makerTF(tfPlaceholder: "Enter Your New Password",tfCornerRadius: 10,tfTextSize: 13,tfTextColor: .init(hex: "#323643"))
    
    private lazy var newPasswordStripe: UIView = MakeView.shared.makerView(viewBackgroundColor: .init(hex: "#E1E3E8"))

    private lazy var eyeIconNewPassword: UIImageView = MakeView.shared.makerImage(imageName: "eyeIcon", imageContentMode: .scaleAspectFill,imageBackgroundColor: UIColor.init(hex: "#FFFFFF"),imageTintColor: UIColor.init(hex: "#CCCCCC"))
    
    private lazy var confirmPasswordLabel: UILabel = MakeView.shared.makerLabel(text: "Confirm Password",textColor: .init(hex: "#A5A5A5"),textSize: 12)
    
    private lazy var confirmPasswordTF: UITextField = MakeView.shared.makerTF(tfPlaceholder: "Enter Your Confirm Password",tfCornerRadius: 10,tfTextSize: 13,tfTextColor: .init(hex: "#323643"))
    
    private lazy var confirmPasswordStripe: UIView = MakeView.shared.makerView(viewBackgroundColor: .init(hex: "#E1E3E8"))
    
    
    private lazy var eyeIconConfirmPassword: UIImageView = MakeView.shared.makerImage(imageName: "eyeIcon", imageContentMode: .scaleAspectFill,imageBackgroundColor: UIColor.init(hex: "#FFFFFF"),imageTintColor: UIColor.init(hex: "#CCCCCC"))
    
    private lazy var submitBtn = MakeView.shared.makerButton(buttonSetTitle: "Submit",buttonSetTitleColor: UIColor.init(hex: "#FFFFFF"),buttonTitleSize: 18,buttonCornerRadius: 15,buttonBackgroundColor: UIColor.init(hex: "#4AB07E"),buttonSelector: #selector(submitBtnTapped(sender: )), buttonSelf: self)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        setupImage()
        setupView()
        setupTF()
        setupLabel()
        setupBtn()
    }
    
    private func setupUI(){
        view.backgroundColor = .init(hex: "#4AC6E9")
        view.addSubview(lockImage)
        view.addSubview(idTF)
        view.addSubview(whiteView)
        whiteView.addSubview(newPasswordLabel)
        whiteView.addSubview(newPasswordTF)
        whiteView.addSubview(newPasswordStripe)
        whiteView.addSubview(eyeIconNewPassword)
        whiteView.addSubview(confirmPasswordLabel)
        whiteView.addSubview(confirmPasswordTF)
        whiteView.addSubview(confirmPasswordStripe)
        whiteView.addSubview(eyeIconConfirmPassword)
        whiteView.addSubview(submitBtn)
    }
    
    
    private func setupImage(){
        lockImage.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide).offset(36)
            make.horizontalEdges.equalToSuperview().inset(106)
            make.height.width.equalTo(148)
        }
        eyeIconNewPassword.snp.makeConstraints { make in
            make.top.equalTo(newPasswordLabel.snp.bottom).offset(10)
            make.trailing.equalToSuperview().offset(-30)
            make.height.equalTo(13)
            make.width.equalTo(18)
        }
        
        eyeIconConfirmPassword.snp.makeConstraints { make in
            make.top.equalTo(confirmPasswordLabel.snp.bottom).offset(10)
            make.trailing.equalToSuperview().offset(-30)
            make.height.equalTo(13)
            make.width.equalTo(18)
        }
    }
    
    
    private func setupTF(){
        idTF.snp.makeConstraints { make in
            make.top.equalTo(lockImage.snp.bottom).offset(34)
            make.horizontalEdges.equalToSuperview().inset(40)
            make.height.equalTo(45)
        }
        
        newPasswordTF.snp.makeConstraints { make in
            make.top.equalTo(newPasswordLabel.snp.bottom).offset(10)
            make.horizontalEdges.equalToSuperview().inset(23)
            make.height.equalTo(20)
        }
        
        confirmPasswordTF.snp.makeConstraints { make in
            make.top.equalTo(confirmPasswordLabel.snp.bottom).offset(10)
            make.horizontalEdges.equalToSuperview().inset(23)
            make.height.equalTo(20)
        }
    }
    
    
    private func setupView(){
        whiteView.snp.makeConstraints { make in
            make.top.equalTo(idTF.snp.bottom).offset(43)
            make.horizontalEdges.equalToSuperview()
            make.bottom.equalToSuperview()
        }
        newPasswordStripe.snp.makeConstraints { make in
            make.top.equalTo(newPasswordTF.snp.bottom).offset(10)
            make.horizontalEdges.equalToSuperview().inset(23)
            make.height.equalTo(1)
        }
        confirmPasswordStripe.snp.makeConstraints { make in
            make.top.equalTo(confirmPasswordTF.snp.bottom).offset(10)
            make.horizontalEdges.equalToSuperview().inset(23)
            make.height.equalTo(1)
        }
    }
    
    
    private func setupLabel(){
        newPasswordLabel.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(120)
            make.leading.equalToSuperview().offset(23)
        }
        confirmPasswordLabel.snp.makeConstraints { make in
            make.top.equalTo(newPasswordStripe.snp.bottom).offset(25)
            make.leading.equalToSuperview().offset(23)
        }
    }
    
    
    private func setupBtn(){
        submitBtn.snp.makeConstraints { make in
            make.top.equalTo(confirmPasswordStripe.snp.bottom).offset(67)
            make.horizontalEdges.equalToSuperview().inset(133)
            make.height.equalTo(35)
        }
    }
    
    
    
    @objc func submitBtnTapped(sender:UIButton){
        guard let newPasswordText = newPasswordTF.text else { return }
        guard let confirmPasswordText = confirmPasswordTF.text else { return }
        guard let iDText = idTF.text else { return }

        if newPasswordText .count < 8 || confirmPasswordText.count < 8 || iDText.count < 4 || newPasswordText != confirmPasswordText {
            if newPasswordText .count < 8 {
                newPasswordTF.attributedPlaceholder = .init(string: "Please fill out", attributes: [NSAttributedString.Key.foregroundColor: UIColor.red])
                newPasswordStripe.layer.borderWidth = 2
            }
            if confirmPasswordText.count < 8 {
                confirmPasswordTF.attributedPlaceholder = .init(string: "Please fill out", attributes: [NSAttributedString.Key.foregroundColor: UIColor.red])
                confirmPasswordStripe.layer.borderWidth = 2
            }
            if iDText.count < 4{
                idTF.attributedPlaceholder = .init(string: "Please fill out", attributes: [NSAttributedString.Key.foregroundColor: UIColor.red])
                idTF.layer.borderWidth = 2
            }
            
        }else{
            navigationController?.popViewController(animated: true)
        }
        
    }
    
}
