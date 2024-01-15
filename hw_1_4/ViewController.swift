//
//  ViewController.swift
//  hw_1_4
//
//  Created by Erma on 13/1/24.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    private lazy var kidImage:UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "kidImage")
        view.contentMode = .scaleAspectFill
        return view
    }()
    
    private lazy var welcomeLabel:UILabel = {
        let view = UILabel()
        view.font = .systemFont(ofSize: 34,weight: .bold)
        view.text = "Welcome Back"
        view.textColor = .init(hex: "#FFFFFF")
        return view
    }()
    private lazy var signInLabel:UILabel = {
        let view = UILabel()
        view.font = .systemFont(ofSize: 20)
        view.alpha = 0.61
        view.text = "Sign in to continue"
        view.textColor = .init(hex: "#FFFFFF")
        return view
    }()
    
    private lazy var whiteView:UIView = {
        let view = UIView()
        view.backgroundColor = .init(hex: "FFFFFF")
        view.layer.cornerRadius  = 32
        return view
    }()
    
    
    private lazy var emailLabel:UILabel = {
        let view = UILabel()
        view.font = .systemFont(ofSize: 12)
        view.text = "Employee Id / Email"
        view.textColor = .init(hex: "#A5A5A5")
        return view
    }()
    
    private lazy var emailTF:UITextField = {
        let view = UITextField()
        view.placeholder = "Enter Your Email"
        view.layer.borderColor = UIColor.red.cgColor
        view.layer.cornerRadius = 10
        view.font = .systemFont(ofSize: 13)
        let view2 = UIView(frame: CGRect(x: 0, y: 0, width: 8, height: 5))
        view.leftView = view2
        view.leftViewMode = .always
        view.textColor = .init(hex: "#323643")
        return view
    }()
    private lazy var firstStripe:UIView = {
        let view = UIView()
        view.backgroundColor = .init(hex: "#E1E3E8")
        view.layer.borderColor = UIColor.red.cgColor
        return view
    }()
    private lazy var passwordLabel:UILabel = {
        let view = UILabel()
        view.font = .systemFont(ofSize: 12)
        view.text = "Password"
        view.textColor = .init(hex: "#A5A5A5")
        return view
    }()
    private lazy var passwordTF:UITextField = {
        let view = UITextField()
        view.placeholder = "Enter Your Password"
        view.layer.borderColor = UIColor.red.cgColor
        view.layer.cornerRadius = 10
        let view2 = UIView(frame: CGRect(x: 0, y: 0, width: 8, height: 5))
        view.leftView = view2
        view.leftViewMode = .always
        view.font = .systemFont(ofSize: 13)
        view.textColor = .init(hex: "#323643")
        return view
    }()
    private lazy var secondStripe:UIView = {
        let view = UIView()
        view.backgroundColor = .init(hex: "#E1E3E8")
        view.layer.borderColor = UIColor.red.cgColor
        return view
    }()
    private lazy var eyeIcon:UIButton = {
        let view  = UIButton(type: .system)
        view.setImage(UIImage(named: "eyeIcon"), for: .normal)
        view.tintColor = .init(hex: "#CCCCCC")
        view.addTarget(self, action: #selector(eyeIconTapped(sender: )), for: .touchUpInside)
        view.backgroundColor = .init(hex: "#FFFFFF")
        return view
    }()
    
    private lazy var forgotPasswordBtn:UIButton = {
        let view = UIButton(type: .system)
        view.setTitle("Forgot Password?", for: .normal)
        view.setTitleColor(UIColor(hex: "#4B94EA"), for: .normal)
        view.addTarget(self, action: #selector(forgotPasswordBtnTapped(sender: )), for: .touchUpInside)
        view.titleLabel?.font = UIFont.systemFont(ofSize: 13)
        return view
    }()
    private lazy var checkBoxBtn:UIButton = {
        let view  = UIButton()
        view.setImage(UIImage(named: "checkBox"), for: .normal)
        view.tintColor = .init(hex: "#000000")
        view.backgroundColor = .init(hex: "FFFFFF")
        view.addTarget(self, action: #selector(checkBoxTapped(sender: )), for: .touchUpInside)
        return view
    }()
    private lazy var rememberMeLabel:UILabel = {
        let view = UILabel()
        view.text = "Remember Me"
        view.font = .systemFont(ofSize: 18, weight: .bold)
        view.textColor = .init(hex: "#000000")
        return view
    }()
    private lazy var signInBtn:UIButton = {
        let view = UIButton(type: .system)
        view.setTitle("Sign In", for: .normal)
        view.setTitleColor(UIColor(hex: "#FFFFFF"), for: .normal)
        view.titleLabel?.font = UIFont.systemFont(ofSize: 18)
        view.addTarget(self, action: #selector(signInTapped(sender: )), for: .touchUpInside)
        view.backgroundColor = .init(hex: "#2855AE")
        view.layer.cornerRadius = 15
        return view
    }()
    private lazy var dontHaveAccountLabel:UILabel = {
        let view = UILabel()
        view.text = "Don’t have an Account?"
        view.font = .systemFont(ofSize: 13, weight: .bold)
        view.textColor = .init(hex: "#000000")
        return view
    }()
    private lazy var signUpBtn:UIButton = {
        let view = UIButton(type: .system)
        view.setTitle("Sign Up", for: .normal)
        view.setTitleColor(UIColor(hex: "#4B94EA"), for: .normal)
        view.titleLabel?.font = UIFont.systemFont(ofSize: 13)
        view.addTarget(self, action: #selector(singUpTapped(sender: )), for: .touchUpInside)
        return view
    }()
    private lazy var knowledgeImage:UIImageView = {
        let view = UIImageView()
        view.backgroundColor = .init(hex: "#FFFFFF")
        view.contentMode = .scaleAspectFill
        view.image = UIImage(named: "knowledgeImage")
        return view
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    private func setupUI(){
        view.backgroundColor = .init(hex: "#4AC6E9")
        
        view.addSubview(kidImage)
        view.addSubview(welcomeLabel)
        view.addSubview(signInLabel)
        view.addSubview(whiteView)
        whiteView.addSubview(emailLabel)
        whiteView.addSubview(emailTF)
        whiteView.addSubview(firstStripe)
        whiteView.addSubview(passwordLabel)
        whiteView.addSubview(passwordTF)
        whiteView.addSubview(secondStripe)
        whiteView.addSubview(eyeIcon)
        whiteView.addSubview(forgotPasswordBtn)
        whiteView.addSubview(checkBoxBtn)
        whiteView.addSubview(rememberMeLabel)
        whiteView.addSubview(signInBtn)
        whiteView.addSubview(knowledgeImage)
        whiteView.addSubview(dontHaveAccountLabel)
        whiteView.addSubview(signUpBtn)
        
        setupTF()
        setupLabel()
        setupImage()
        setupView()
        setupButton()
    }
    
    
    private func setupImage(){
        kidImage.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide)
            make.leading.equalToSuperview().offset(10)
            make.trailing.equalToSuperview()
            make.height.equalTo(256)
            make.width.equalTo(350)
        }
        
        knowledgeImage.snp.makeConstraints { make in
            make.bottom.equalToSuperview()
            make.top.equalTo(signInBtn.snp.bottom).offset(31)
            make.horizontalEdges.equalToSuperview()
        }
    }
    
    
    private func setupLabel(){
        emailLabel.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(43)
            make.leading.equalToSuperview().offset(23)
        }
        passwordLabel.snp.makeConstraints { make in
            make.top.equalTo(firstStripe.snp.bottom).offset(25)
            make.leading.equalToSuperview().offset(23)
        }
        
        welcomeLabel.snp.makeConstraints { make in
            make.bottom.equalToSuperview().offset(-449)
            make.leading.equalToSuperview().offset(15)
            make.height.equalTo(48)
        }
        
        signInLabel.snp.makeConstraints { make in
            make.top.equalTo(welcomeLabel.snp.bottom).offset(4)
            make.leading.equalToSuperview().offset(15)
            make.height.equalTo(25)
        }
        
        
        dontHaveAccountLabel.snp.makeConstraints { make in
            make.top.equalTo(signInBtn.snp.bottom).offset(45)
            make.leading.equalToSuperview().offset(11)
            make.height.equalTo(16)
        }
        
        rememberMeLabel.snp.makeConstraints { make in
            make.top.equalTo(forgotPasswordBtn.snp.bottom).offset(18)
            make.leading.equalTo(checkBoxBtn.snp.trailing).offset(13)
        }
    }
    
    
    private func setupView(){
        whiteView.snp.makeConstraints { make in
            make.top.equalTo(signInLabel.snp.bottom).offset(8)
            make.horizontalEdges.equalToSuperview()
            make.bottom.equalToSuperview()
        }
        
        
        firstStripe.snp.makeConstraints { make in
            make.top.equalTo(emailTF.snp.bottom).offset(13)
            make.height.equalTo(1)
            make.horizontalEdges.equalToSuperview().inset(23)
        }

        
        secondStripe.snp.makeConstraints { make in
            make.top.equalTo(passwordTF.snp.bottom).offset(10)
            make.height.equalTo(1)
            make.horizontalEdges.equalToSuperview().inset(23)
        }
    }
    
    
    private func setupTF(){
        emailTF.snp.makeConstraints { make in
            make.top.equalTo(emailLabel.snp.bottom).offset(13)
            make.leading.equalToSuperview().offset(23)
            make.trailing.equalToSuperview().offset(-23)
            make.height.equalTo(20)
        }
        
        passwordTF.snp.makeConstraints { make in
            make.top.equalTo(passwordLabel.snp.bottom).offset(10)
            make.horizontalEdges.equalToSuperview().inset(23)
            make.height.equalTo(20)
        }
    }
    
    private  func setupButton(){
        eyeIcon.snp.makeConstraints { make in
            make.top.equalTo(passwordLabel.snp.bottom).offset(13)
            make.trailing.equalToSuperview().offset(-30)
            make.height.equalTo(13)
            make.width.equalTo(18)
        }
        
        forgotPasswordBtn.snp.makeConstraints { make in
            make.top.equalTo(secondStripe.snp.bottom).offset(3)
            make.trailing.equalToSuperview().offset(-22)
            make.height.equalTo(20)
            make.width.equalTo(110)
        }
        
        checkBoxBtn.snp.makeConstraints { make in
            make.top.equalTo(forgotPasswordBtn.snp.bottom).offset(18)
            make.leading.equalToSuperview().offset(24)
            make.height.equalTo(24)
            make.width.equalTo(19)
        }
       
        signInBtn.snp.makeConstraints { make in
            make.top.equalTo(rememberMeLabel.snp.bottom).offset(43)
            make.centerX.equalToSuperview()
            make.height.equalTo(40)
            make.width.equalTo(168)
        }
        
        signUpBtn.snp.makeConstraints { make in
            make.top.equalTo(signInBtn.snp.bottom).offset(45)
            make.leading.equalTo(dontHaveAccountLabel.snp.trailing).offset(4)
            make.height.equalTo(16)
        }
    }
    
    
    
    @objc func eyeIconTapped(sender:UIButton){
        
        passwordTF.isSecureTextEntry.toggle()
        
        let eyeIconImage = passwordTF.isSecureTextEntry ? UIImage(named: "closedEyeIcon") : UIImage(named: "eyeIcon")
        eyeIcon.setImage(eyeIconImage, for: .normal)
    }
    
    
    @objc func checkBoxTapped(sender:UIButton){
        checkBoxBtn.isSelected.toggle()
        if sender.isSelected {
            checkBoxBtn.setImage(UIImage(named: "checkBox"),for: .selected)
        }else{
            checkBoxBtn.setImage(UIImage(named: "unCheckedBox"),for: .normal)
        }
    }
    
    
    @objc func signInTapped(sender:UIButton){
        guard let emailText = emailTF.text else { return }
        guard let passwordText = passwordTF.text else { return }
        
        if emailText.count < 4 || passwordText.count < 8 {
            if emailText.count < 4 {
            emailTF.attributedPlaceholder = .init(string: "Please fill out", attributes: [NSAttributedString.Key.foregroundColor: UIColor.red])
            firstStripe.layer.borderWidth = 2
        }
            if passwordText.count < 8{
                passwordTF.attributedPlaceholder = .init(string: "Please fill out", attributes: [NSAttributedString.Key.foregroundColor: UIColor.red])
                secondStripe.layer.borderWidth = 2
            }
            
        }else{
            let vc = FifthViewController()
            navigationController?.pushViewController(vc, animated: true)
        }
    }
    
    
    
    @objc func forgotPasswordBtnTapped(sender:UIButton){
        let vc = ThirdViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
    
    
    @objc func singUpTapped(sender:UIButton){
        let vc = SecondViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
    


}










extension UIColor {
    convenience init(hex: String, alpha: CGFloat = 1.0) {
        let hexString: String = hex.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
        let scanner = Scanner(string: hexString)
        
        if (hexString.hasPrefix("#")) {
            scanner.scanLocation = 1
        }
        var color: UInt32 = 0
        
        scanner.scanHexInt32(&color)
        
        let mask = 0x000000FF
        let r = Int(color >> 16) & mask
        let g = Int(color >> 8) & mask
        let b = Int(color) & mask
        let red   = CGFloat(r) / 255.0
        let green = CGFloat(g) / 255.0
        let blue  = CGFloat(b) / 255.0
        self.init(red:red, green:green, blue:blue, alpha:alpha)
    }
}
