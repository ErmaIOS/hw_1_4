//
//  SecondViewController.swift
//  hw_1_4
//
//  Created by Erma on 15/1/24.
//

import UIKit

class SecondViewController: UIViewController {
    private lazy var kidImage:UIImageView = MakeView.shared.makerImage(imageName: "kidImage",imageContentMode: .scaleAspectFill,imageBackgroundColor: .clear,imageTintColor: .clear)

    private lazy var whiteView:UIView = MakeView.shared.makerView(viewBackgroundColor: .init(hex: "#FFFFFF"),viewCornerRadius: 32)
    
    

    private lazy var fullNameLabel: UILabel = MakeView.shared.makerLabel(text: "Full Name",textColor: .init(hex: "#A5A5A5"),textSize: 12)
    
    private lazy var fullNameTF: UITextField = MakeView.shared.makerTF(tfPlaceholder: "Enter Your Full Name",tfCornerRadius: 10,tfTextSize: 16,tfTextColor: .init(hex: "#323643"))
    
    private lazy var fullNameStripe: UIView = MakeView.shared.makerView(viewBackgroundColor: .init(hex: "#E1E3E8"))
    
    
    
    private lazy var mobileNumberLabel: UILabel = MakeView.shared.makerLabel(text: "Mobile Number",textColor: .init(hex: "#A5A5A5"),textSize: 12)
    
    private lazy var mobileNumberTF: UITextField = MakeView.shared.makerTF(tfPlaceholder: "Enter Your Mobile Number",tfCornerRadius: 10,tfTextSize: 16,tfTextColor: .init(hex: "#323643"))
    
    private lazy var mobileNumberStripe: UIView = MakeView.shared.makerView(viewBackgroundColor: .init(hex: "#E1E3E8"))
    
    
    
    private lazy var emailLabel: UILabel = MakeView.shared.makerLabel(text: "Email",textColor: .init(hex: "#A5A5A5"),textSize: 12)
    
    private lazy var emailTF: UITextField = MakeView.shared.makerTF(tfPlaceholder: "Enter Your Email",tfCornerRadius: 10,tfTextSize: 16,tfTextColor: .init(hex: "#323643"))
    
    private lazy var emailStripe: UIView = MakeView.shared.makerView(viewBackgroundColor: .init(hex: "#E1E3E8"))
    
    
    
    
    private lazy var userNameLabel: UILabel = MakeView.shared.makerLabel(text: "User Name",textColor: .init(hex: "#A5A5A5"),textSize: 12)
    
    private lazy var userNameTF: UITextField = MakeView.shared.makerTF(tfPlaceholder: "Enter Your User Name",tfCornerRadius: 10,tfTextSize: 16,tfTextColor: .init(hex: "#323643"))
    
    private lazy var userNameStripe: UIView = MakeView.shared.makerView(viewBackgroundColor: .init(hex: "#E1E3E8"))
    
    
    
    private lazy var passwordLabel: UILabel = MakeView.shared.makerLabel(text: "Password",textColor: .init(hex: "#A5A5A5"),textSize: 12)
    
    private lazy var passwordTF: UITextField = MakeView.shared.makerTF(tfPlaceholder: "Enter Your Password",tfCornerRadius: 10,tfTextSize: 13,tfTextColor: .init(hex: "#323643"))
    
    private lazy var passwordStripe: UIView = MakeView.shared.makerView(viewBackgroundColor: .init(hex: "#E1E3E8"))
    
    
    
    private lazy var confirmPasswordLabel: UILabel = MakeView.shared.makerLabel(text: "Confirm Password",textColor: .init(hex: "#A5A5A5"),textSize: 12)
    
    private lazy var confirmPasswordTF: UITextField = MakeView.shared.makerTF(tfPlaceholder: "Enter Your Confirm Password",tfCornerRadius: 10,tfTextSize: 13,tfTextColor: .init(hex: "#323643"))
    
    private lazy var confirmPasswordStripe: UIView = MakeView.shared.makerView(viewBackgroundColor: .init(hex: "#E1E3E8"))
    
    
    private lazy var signUpBtn: UIButton = MakeView.shared.makerButton(buttonSetTitle: "Sign Up",buttonSetTitleColor: UIColor.init(hex: "FFFFFF"),buttonTitleSize: 18, buttonCornerRadius: 15,buttonBackgroundColor: UIColor.init(hex: "#2855AE"), buttonSelector: #selector(signUpTapped(sender: )), buttonSelf: self)
   
    
    private lazy var alreadyHaveAccount: UILabel = MakeView.shared.makerLabel(text: "Already have an Account?",textColor: UIColor.init(hex: "#000000"),textSize: 13,textWeight: .bold)
    
    private lazy var signInBtn: UIButton = MakeView.shared.makerButton(buttonSetTitle: "Sign In",buttonSetTitleColor: UIColor.init(hex: "#4B94EA"),buttonTitleSize: 13, buttonBackgroundColor: UIColor.init(hex: "#FFFFFF"), buttonSelector: #selector(signInTapped(sender: )), buttonSelf: self)
    
    private lazy var knowledgeImage: UIImageView = MakeView.shared.makerImage(imageName: "knowledgeImage", imageContentMode: .scaleAspectFill,imageBackgroundColor: .clear,imageTintColor: .clear)
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    private lazy var eyeIconPassword: UIImageView = MakeView.shared.makerImage(imageName: "eyeIcon", imageContentMode: .scaleAspectFill,imageBackgroundColor: UIColor.init(hex: "#FFFFFF"),imageTintColor: UIColor.init(hex: "#CCCCCC"))
    private lazy var eyeIconConfirmPassword: UIImageView = MakeView.shared.makerImage(imageName: "eyeIcon", imageContentMode: .scaleAspectFill,imageBackgroundColor: UIColor.init(hex: "#FFFFFF"),imageTintColor: UIColor.init(hex: "#CCCCCC"))
    
    private func setupUI(){
        view.backgroundColor = .init(hex: "#4AC6E9")
        view.addSubview(kidImage)
        view.addSubview(whiteView)
        view.addSubview(fullNameLabel)
        view.addSubview(fullNameTF)
        view.addSubview(fullNameStripe)
        view.addSubview(mobileNumberLabel)
        view.addSubview(mobileNumberTF)
        view.addSubview(mobileNumberStripe)
        view.addSubview(emailLabel)
        view.addSubview(emailTF)
        view.addSubview(emailStripe)
        view.addSubview(userNameLabel)
        view.addSubview(userNameTF)
        view.addSubview(userNameStripe)
        view.addSubview(passwordLabel)
        view.addSubview(passwordTF)
        view.addSubview(passwordStripe)
        view.addSubview(confirmPasswordLabel)
        view.addSubview(confirmPasswordTF)
        view.addSubview(confirmPasswordStripe)
        view.addSubview(signUpBtn)
        view.addSubview(alreadyHaveAccount)
        view.addSubview(signInBtn)
        view.addSubview(knowledgeImage)
        view.addSubview(eyeIconPassword)
        view.addSubview(eyeIconConfirmPassword)
        
        setupTF()
        setupLabel()
        setupImage()
        setupView()
        setupButton()
    }
    
    
    
    private func setupImage(){
        kidImage.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide)
            make.leading.equalToSuperview().offset(32)
            make.trailing.equalToSuperview()
            make.height.equalTo(256)
            make.width.equalTo(350)
        }
        knowledgeImage.snp.makeConstraints { make in
            make.bottom.equalToSuperview()
            make.top.equalTo(signUpBtn.snp.bottom).offset(17)
            make.horizontalEdges.equalToSuperview()
        }
        eyeIconPassword.snp.makeConstraints { make in
            make.top.equalTo(passwordLabel.snp.bottom).offset(10)
            make.trailing.equalToSuperview().offset(-31)
            make.height.equalTo(13)
            make.width.equalTo(18)
        }
        eyeIconConfirmPassword.snp.makeConstraints { make in
            make.top.equalTo(confirmPasswordLabel.snp.bottom).offset(10)
            make.trailing.equalToSuperview().offset(-31)
            make.height.equalTo(13)
            make.width.equalTo(18)
        }
    }
    
    private func setupView(){
        whiteView.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide).offset(163)
            make.horizontalEdges.equalToSuperview()
            make.bottom.equalToSuperview()
        }
        fullNameStripe.snp.makeConstraints { make in
            make.top.equalTo(fullNameTF.snp.bottom).offset(13)
            make.height.equalTo(1)
            make.horizontalEdges.equalToSuperview().inset(22)
        }
        mobileNumberStripe.snp.makeConstraints { make in
            make.top.equalTo(mobileNumberTF.snp.bottom).offset(13)
            make.height.equalTo(1)
            make.horizontalEdges.equalToSuperview().inset(22)
        }
        emailStripe.snp.makeConstraints { make in
            make.top.equalTo(emailTF.snp.bottom).offset(13)
            make.height.equalTo(1)
            make.horizontalEdges.equalToSuperview().inset(22)
        }
        userNameStripe.snp.makeConstraints { make in
            make.top.equalTo(userNameTF.snp.bottom).offset(13)
            make.height.equalTo(1)
            make.horizontalEdges.equalToSuperview().inset(22)
        }
        passwordStripe.snp.makeConstraints { make in
            make.top.equalTo(passwordTF.snp.bottom).offset(10)
            make.height.equalTo(1)
            make.horizontalEdges.equalToSuperview().inset(22)
        }
        confirmPasswordStripe.snp.makeConstraints { make in
            make.top.equalTo(confirmPasswordTF.snp.bottom).offset(10)
            make.height.equalTo(1)
            make.horizontalEdges.equalToSuperview().inset(22)
        }
        
        
    }
    
    
     private func setupLabel(){
        fullNameLabel.snp.makeConstraints { make in
            make.top.equalTo(whiteView.snp.top).offset(55)
            make.leading.equalToSuperview().offset(22)
        }
        mobileNumberLabel.snp.makeConstraints { make in
            make.top.equalTo(fullNameStripe.snp.bottom).offset(8)
            make.leading.equalToSuperview().offset(22)
        }
        emailLabel.snp.makeConstraints { make in
            make.top.equalTo(mobileNumberStripe.snp.bottom).offset(8)
            make.leading.equalToSuperview().offset(22)
        }
        userNameLabel.snp.makeConstraints { make in
            make.top.equalTo(emailStripe.snp.bottom).offset(8)
            make.leading.equalToSuperview().offset(22)
        }
        passwordLabel.snp.makeConstraints { make in
            make.top.equalTo(userNameStripe.snp.bottom).offset(8)
            make.leading.equalToSuperview().offset(22)
        }
        confirmPasswordLabel.snp.makeConstraints { make in
            make.top.equalTo(passwordStripe.snp.bottom).offset(8)
            make.leading.equalToSuperview().offset(22)
        }
        alreadyHaveAccount.snp.makeConstraints { make in
            make.top.equalTo(signUpBtn.snp.bottom).offset(23)
            make.leading.equalToSuperview().offset(12)
        }
        
    }
    
    private func setupTF(){
        fullNameTF.snp.makeConstraints { make in
            make.top.equalTo(fullNameLabel.snp.bottom).offset(13)
            make.horizontalEdges.equalToSuperview().inset(22)
            make.height.equalTo(20)
        }
        mobileNumberTF.snp.makeConstraints { make in
            make.top.equalTo(mobileNumberLabel.snp.bottom).offset(13)
            make.horizontalEdges.equalToSuperview().inset(22)
            make.height.equalTo(20)
        }
        emailTF.snp.makeConstraints { make in
            make.top.equalTo(emailLabel.snp.bottom).offset(13)
            make.horizontalEdges.equalToSuperview().inset(22)
            make.height.equalTo(20)
        }
        userNameTF.snp.makeConstraints { make in
            make.top.equalTo(userNameLabel.snp.bottom).offset(13)
            make.horizontalEdges.equalToSuperview().inset(22)
            make.height.equalTo(20)
        }
        passwordTF.snp.makeConstraints { make in
            make.top.equalTo(passwordLabel.snp.bottom).offset(10)
            make.horizontalEdges.equalToSuperview().inset(22)
            make.height.equalTo(20)
        }
        confirmPasswordTF.snp.makeConstraints { make in
            make.top.equalTo(confirmPasswordLabel.snp.bottom).offset(10)
            make.horizontalEdges.equalToSuperview().inset(22)
            make.height.equalTo(20)
        }
    }
    
    private func setupButton(){
        signUpBtn.snp.makeConstraints { make in
            make.top.equalTo(confirmPasswordStripe.snp.bottom).offset(33)
            make.centerX.equalToSuperview()
            make.height.equalTo(40)
            make.width.equalTo(168)
        }
        signInBtn.snp.makeConstraints { make in
            make.top.equalTo(signUpBtn.snp.bottom).offset(23)
            make.leading.equalTo(alreadyHaveAccount.snp.trailing).offset(4)
            make.height.equalTo(16)
        }
    }
    
    
    
    

    
    
    

    @objc func signUpTapped(sender:UIButton){
        func handleTextField(text: String, textField: UITextField, stripeView: UIView, minLength: Int) {
            if text.count < minLength {
                textField.attributedPlaceholder = NSAttributedString(string: "Please fill out", attributes: [NSAttributedString.Key.foregroundColor: UIColor.red])
                stripeView.layer.borderWidth = 2
            }
        }
        guard let fullNameText = fullNameTF.text else { return }
        guard let mobileNumberText = mobileNumberTF.text else { return }
        guard let emailText = emailTF.text else { return }
        guard let userNameText = userNameTF.text else { return }
        guard let passwordText = passwordTF.text else { return }
        guard let confirmPasswordText = confirmPasswordTF.text else { return }
        

        handleTextField(text: fullNameText, textField: fullNameTF, stripeView: fullNameStripe, minLength: 8)
        handleTextField(text: mobileNumberText, textField: mobileNumberTF, stripeView: mobileNumberStripe, minLength: 9)
        handleTextField(text: emailText, textField: emailTF, stripeView: emailStripe, minLength: 10)
        handleTextField(text: userNameText, textField: userNameTF, stripeView: userNameStripe, minLength: 4)
        handleTextField(text: passwordText, textField: passwordTF, stripeView: passwordStripe, minLength: 8)
        handleTextField(text: confirmPasswordText, textField: confirmPasswordTF, stripeView: confirmPasswordStripe, minLength: 8)

        if [fullNameText, mobileNumberText, emailText, userNameText, passwordText, confirmPasswordText].allSatisfy({ $0.count >= 8 }) && passwordText == confirmPasswordText {
                let vc = FifthViewController()
                navigationController?.pushViewController(vc, animated: true)
            }
    }
    
    
    @objc func signInTapped(sender:UIButton){
        navigationController?.popViewController(animated: true)
    }
}
