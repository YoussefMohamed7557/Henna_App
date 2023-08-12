//
//  AuthintecationExtension.swift
//  Henna-App
//
//  Created by Youssef Mohamed on 12/08/2023.
//
//  squareshape
//  checkmark.square.fill
import Foundation
import UIKit
extension AuthintecationViewController{
    func presentSignInScreen(){
        let signInImage = UIImage(named: "activeSignIn")
        let signUpImage = UIImage(named: "inActiveSignUp")
        UIView.animate(withDuration: 1) {
            self.switchConstraint.constant = 0
            self.loginButtonOutlet.setImage(signInImage, for: .normal)
            self.createAccountButtonOutlet.setImage(signUpImage, for: .normal)
            self.view.layoutIfNeeded()
        }
    }
    func presentSignUpScreen(){
        let signInImage = UIImage(named: "inActiveSignIn")
        let signUpImage = UIImage(named: "activeSignUp")

        UIView.animate(withDuration: 1) {
            self.switchConstraint.constant = self.view.frame.width * -1
            self.loginButtonOutlet.setImage(signInImage, for: .normal)
            self.createAccountButtonOutlet.setImage(signUpImage, for: .normal)
            self.view.layoutIfNeeded()
        }
    }
    func toggleDisplayingThePasswordText(){
        passwordSignUpTextField.isSecureTextEntry = true
        passwordSignUpTextField.rightViewMode = .always
        confirmPasswordSignUpTextField.isSecureTextEntry = true
        confirmPasswordSignUpTextField.rightViewMode = .always
        passwordLoginTextfield.isSecureTextEntry = true
        passwordLoginTextfield.rightViewMode = .always
        let toggleButton = UIButton(type: .custom)
        toggleButton.setImage(UIImage(systemName: "eye.slash"), for: .normal)
        toggleButton.setImage(UIImage(systemName: "eye"), for: .selected)
        toggleButton.addTarget(self, action: #selector(togglePasswordSignUpTextField(_:)), for: .touchUpInside)
        toggleButton.frame = CGRect(x: -12, y: 0, width: 24, height: 24)
        passwordSignUpTextField.rightView = toggleButton
        
        let toggleButton2 = UIButton(type: .custom)
        toggleButton2.setImage(UIImage(systemName: "eye.slash"), for: .normal)
        toggleButton2.setImage(UIImage(systemName: "eye"), for: .selected)
        toggleButton2.addTarget(self, action: #selector(toggleConfirmPasswordSignUpTextField(_:)), for: .touchUpInside)
        toggleButton2.frame = CGRect(x: -12, y: 0, width: 24, height: 24)
        confirmPasswordSignUpTextField.rightView = toggleButton2
        
        let toggleButton3 = UIButton(type: .custom)
        toggleButton3.setImage(UIImage(systemName: "eye.slash"), for: .normal)
        toggleButton3.setImage(UIImage(systemName: "eye"), for: .selected)
        toggleButton3.addTarget(self, action: #selector(togglePasswordLoginTextField(_:)), for: .touchUpInside)
        toggleButton3.frame = CGRect(x: -12, y: 0, width: 24, height: 24)
        passwordLoginTextfield.rightView = toggleButton3
    }
    @objc func togglePasswordSignUpTextField(_ sender: UIButton) {
        passwordSignUpTextField.isSecureTextEntry.toggle()
        sender.isSelected = !passwordSignUpTextField.isSecureTextEntry
    }
    @objc func toggleConfirmPasswordSignUpTextField(_ sender: UIButton) {
        confirmPasswordSignUpTextField.isSecureTextEntry.toggle()
        sender.isSelected = !confirmPasswordSignUpTextField.isSecureTextEntry
    }
    @objc func togglePasswordLoginTextField(_ sender: UIButton) {
        passwordLoginTextfield.isSecureTextEntry.toggle()
        sender.isSelected = !passwordLoginTextfield.isSecureTextEntry
    }
    func toggleTheCheckBox(){
        if isChcked{
            isChcked = false
            self.agreeTheConditionCheckBoxOutlet.setImage(UIImage(systemName: "squareshape"), for: .normal)
        }else{
            isChcked = true
            self.agreeTheConditionCheckBoxOutlet.setImage(UIImage(systemName: "checkmark.square.fill"), for: .normal)
        }
    }
}
