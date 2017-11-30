//
//  ITStartViewController.swift
//  ITL
//
//  Created by 张俊鹏 on 2017/11/29.
//  Copyright © 2017年 JWAJDL. All rights reserved.
//

import UIKit
import SnapKit

class ITStartViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = ITBackgroundColor()
        
        setupUI()
       

        // Do any additional setup after loading the view.
    }
    
    private func setupUI(){
        self.view.addSubview(iconImageView)
        self.view.addSubview(textLabel)
        self.view.addSubview(titleLabel)
        self.view.addSubview(titleLabel2)
        self.view.addSubview(registerButton)
        self.view.addSubview(loginButton)
        
        registerButton.addTarget(self, action:#selector(registerAction), for: .touchUpInside)
        loginButton.addTarget(self, action: #selector(loginAction), for: .touchUpInside)
        
        //设置位置
        iconImageView.snp.makeConstraints { (make) in
            make.centerX.equalTo(view)
            make.top.equalToSuperview().offset(80)
            make.size.equalTo(CGSize(width: 128, height: 128))
        }
        
        textLabel.snp.makeConstraints { (make) in
            make.centerX.equalTo(view)
            make.top.equalTo(iconImageView.snp.bottom).offset(10)
        }
        
        titleLabel.snp.makeConstraints { (make) in
            make.centerX.equalTo(view)
            make.top.equalTo(textLabel.snp.bottom).offset(15)
        }
        
        titleLabel2.snp.makeConstraints { (make) in
            make.centerX.equalTo(view)
            make.top.equalTo(titleLabel.snp.bottom).offset(10)
        }
        
        registerButton.snp.makeConstraints { (make) in
            make.centerX.equalTo(view)
            make.top.equalTo(titleLabel2.snp.bottom).offset(200)
            make.size.equalTo(CGSize(width: 143.5, height: 38.5))
        }
        
        loginButton.snp.makeConstraints { (make) in
            make.centerX.equalTo(view)
            make.top.equalTo(registerButton.snp.bottom).offset(35)
            
        }
        
        
    }
    
   @objc func registerAction(){
        let register = ITRegisterViewController()
        self.present(register, animated: true, completion: nil)
    }
    
    @objc func loginAction(){
        let vc = ITLoginViewController()
        self.present(vc, animated: true, completion: nil)
    }
    
    lazy var iconImageView : UIImageView = {
        let iconImageVIew = UIImageView(image:#imageLiteral(resourceName: "logo"))
        return iconImageVIew
    }()
    
    lazy var textLabel : UILabel = {
        
        let textLabel = UILabel()
        textLabel.text = "IT 连"
        textLabel.textColor = UIColor.white
        textLabel.font = UIFont.systemFont(ofSize: 18)
        return textLabel
        
    }()
    
    lazy var titleLabel : UILabel = {
        let titleLabel = UILabel()
        titleLabel.text = "只要技术好、对象、工作、money、"
        titleLabel.font = UIFont.systemFont(ofSize: 15)
        titleLabel.textColor = UIColor.white
        return titleLabel
    }()
    
    lazy var titleLabel2 : UILabel = {
        let titleLabel2 = UILabel()
        titleLabel2.text = "“随天”帮你找"
        titleLabel2.font = UIFont.systemFont(ofSize: 15)
        titleLabel2.textColor = UIColor.white
        return titleLabel2
    }()
    
    
    lazy var registerButton :UIButton = {
        let registerButton = UIButton()
        registerButton.setTitle("立即注册", for: .normal)
        registerButton.setTitleColor(ITBackgroundColor(), for: .normal)
        //        registerButton.titleEdgeInsets = UIEdgeInsetsMake(10, 0, 10, 0)
        registerButton.setBackgroundImage(#imageLiteral(resourceName: "login_btn"), for: .normal)
        
        return registerButton
    }()
    
    lazy var loginButton : UIButton = {
        let loginButton = UIButton()
        loginButton.setTitle("已有帐号,立即登录", for: .normal)
        loginButton.setTitleColor(UIColor.white, for: .normal)
        loginButton.titleLabel?.font = UIFont.systemFont(ofSize: 14.0)
        loginButton.backgroundColor = ITBackgroundColor()
        loginButton.setBackgroundImage(#imageLiteral(resourceName: "btn"), for: .highlighted)
        
        
        return loginButton
    }()
    


}
