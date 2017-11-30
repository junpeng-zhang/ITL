//
//  ITLoginViewController.swift
//  ITL
//
//  Created by 张俊鹏 on 2017/11/30.
//  Copyright © 2017年 JWAJDL. All rights reserved.
//

import UIKit
import SnapKit

class ITLoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = ITBackgroundColor()
        
        setupUI()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }

    private func setupUI(){
        self.view.addSubview(iconImageView)
        self.view.addSubview(backButton)
        self.view.addSubview(titleLabel)
        self.view.addSubview(phoneLogo)
        self.view.addSubview(passwordLogo)
        self.view.addSubview(accountNumber)
        self.view.addSubview(password)
        self.view.addSubview(loginButton)
        self.view.addSubview(forgotPasswordButton)
        self.view.addSubview(v1)
        self.view.addSubview(v2)
        
        //设置位置
        //返回按钮
        backButton.snp.makeConstraints { (make) in
            make.left.equalTo(view).offset(7)
            make.top.equalTo(view).offset(33)
            make.size.equalTo(CGSize(width: 20, height: 20))
        }
        
        //title
        titleLabel.snp.makeConstraints { (make) in
            make.top.equalTo(view).offset(33)
            make.centerX.equalToSuperview()
        }
        
        //logo
        iconImageView.snp.makeConstraints { (make) in
            make.centerX.equalTo(view)
            make.top.equalTo(titleLabel.snp.bottom).offset(36)
            make.size.equalTo(CGSize(width: 128, height: 128))
        }
        
        //分割线
        v1.snp.makeConstraints { (make) in
            make.top.equalTo(iconImageView.snp.bottom).offset(120)
            make.centerX.equalTo(view)
            make.width.equalTo(view).multipliedBy(0.7)
            make.height.equalTo(1)
            
        }
        
        //手机Logo
        phoneLogo.snp.makeConstraints { (make) in
            make.bottom.equalTo(v1.snp.top).offset(-10)
            make.left.equalTo(view.snp.left).offset(55)
        }
        
        //手机文本框
        accountNumber.snp.makeConstraints { (make) in
            make.bottom.equalTo(v1.snp.top).offset(-10)
            make.left.equalTo(phoneLogo.snp.left).offset(35)
            
        }
        
        //分割线
        v2.snp.makeConstraints { (make) in
            make.top.equalTo(v1.snp.bottom).offset(48)
            make.centerX.equalTo(view)
            make.width.equalTo(view).multipliedBy(0.7)
            make.height.equalTo(1)
        }
        
        //密码Logo
        passwordLogo.snp.makeConstraints { (make) in
            make.bottom.equalTo(v2.snp.top).offset(-10)
            make.left.equalTo(view.snp.left).offset(55)
        }
        
        //密码输入框
        password.snp.makeConstraints { (make) in
            make.bottom.equalTo(v2.snp.top).offset(-10)
            make.left.equalTo(passwordLogo.snp.left).offset(35)
        }
        
        //登录按钮
        loginButton.snp.makeConstraints { (make) in
            make.centerX.equalTo(view)
            make.top.equalTo(v2.snp.bottom).offset(60)
        }
        
        forgotPasswordButton.snp.makeConstraints { (make) in
            make.top.equalTo(v2.snp.bottom)
            make.size.equalTo(CGSize(width: 90, height: 24))
            make.left.equalTo(view).offset(250)
        }
        
        
        
        
    }
    
    //logo
    lazy var iconImageView : UIImageView = {
        let iconImageView = UIImageView(image: #imageLiteral(resourceName: "logo"))
        return iconImageView
    }()
    
    //返回按钮
    lazy var backButton : UIButton = {
        let backButton = UIButton()
        backButton.setBackgroundImage(#imageLiteral(resourceName: "nav_icon_return"), for: .normal)
        backButton.setBackgroundImage(#imageLiteral(resourceName: "left_arrow"), for: .highlighted)
        return backButton
    }()
    
    lazy var titleLabel : UILabel = {
        let titleLabel = UILabel()
        
        titleLabel.text = "登录"
        titleLabel.font = UIFont.systemFont(ofSize: 18.0)
        titleLabel.textColor = UIColor.white
        
        return titleLabel
        
    }()
    
    //手机号logo
    lazy var phoneLogo : UIImageView = {
        let phoneLogo = UIImageView(image:#imageLiteral(resourceName: "registered_icon_phone_default"))
        return phoneLogo
    }()
    
    //密码logo
    lazy var passwordLogo : UIImageView = {
        let passwordLogo = UIImageView(image:#imageLiteral(resourceName: "registered_icon_password_default"))
        return passwordLogo
    }()
    
    //帐户名输入框
    lazy var accountNumber : UITextField = {
        let accountNumber = UITextField()
        
        accountNumber.attributedPlaceholder = NSAttributedString.init(string: "手机号码",attributes: [NSAttributedStringKey.foregroundColor:UIColor.white.withAlphaComponent(0.5)])
        
        accountNumber.attributedPlaceholder = NSAttributedString.init(string: "手机号码",attributes: [NSAttributedStringKey.font:UIFont.systemFont(ofSize:20)])
        
        accountNumber.borderStyle = UITextBorderStyle.none
        
        accountNumber.keyboardType = .numberPad
        
        accountNumber.clearButtonMode = .whileEditing
        
        return accountNumber
    }()
    
    ///密码框
    lazy var password : UITextField = {
        let password = UITextField()
        
        password.attributedPlaceholder = NSAttributedString.init(string: "设置密码",attributes: [NSAttributedStringKey.foregroundColor:UIColor.white.withAlphaComponent(0.5)])
        
        password.attributedPlaceholder = NSAttributedString.init(string: "设置密码",attributes: [NSAttributedStringKey.font:UIFont.systemFont(ofSize:20)])
        
        password.borderStyle = UITextBorderStyle.none
        
        password.isSecureTextEntry = true
        
        password.clearButtonMode = .whileEditing
        
        return password
        
    }()
    
    //登录按钮
    lazy var loginButton : UIButton = {
        let loginButton = UIButton()
        loginButton.setTitle("登录", for: .normal)
        loginButton.setBackgroundImage(#imageLiteral(resourceName: "registered_button_default"), for: .normal)
        loginButton.setTitleColor(ITBackgroundColor(), for: .normal)
        
        return loginButton
    }()
    
    //忘记密码
    lazy var forgotPasswordButton : UIButton = {
        let forgotPasswordButton = UIButton()
        forgotPasswordButton.setTitle("忘记密码", for: .normal)
        forgotPasswordButton.setTitleColor(UIColor.white.withAlphaComponent(0.5), for: .normal)
        forgotPasswordButton.titleLabel?.font = UIFont.systemFont(ofSize: 14.0)
        forgotPasswordButton.backgroundColor = ITBackgroundColor()
        forgotPasswordButton.setBackgroundImage(#imageLiteral(resourceName: "btn"), for: .highlighted)
        
        
        return forgotPasswordButton
    }()
    
    
    //分割线
    lazy var v1 : UIView = {
        let v1 = UIView()
        v1.backgroundColor = UIColor.white.withAlphaComponent(0.5)
        return v1
    }()
    
    lazy var v2 : UIView = {
        let v2 = UIView()
        v2.backgroundColor = UIColor.white.withAlphaComponent(0.5)
        return v2
    }()

}
