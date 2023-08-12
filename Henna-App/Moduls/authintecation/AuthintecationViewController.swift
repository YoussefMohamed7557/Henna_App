//
//  AuthintecationViewController.swift
//  Henna-App
//
//  Created by Youssef Mohamed on 11/08/2023.
//

import UIKit
class AuthintecationViewController: UIViewController {
    @IBOutlet weak var loginButtonOutlet: UIButton!
    @IBOutlet weak var createAccountButtonOutlet: UIButton!
    @IBOutlet weak var switchConstraint: NSLayoutConstraint!
    @IBOutlet weak var emailLoginTextField: UITextField!
    @IBOutlet weak var passwordLoginTextfield: UITextField!
    @IBOutlet weak var firstNameSignUpTextField: UITextField!
    @IBOutlet weak var secondNameSignUpTextField: UITextField!
    @IBOutlet weak var emailSignUpTextField: UITextField!
    @IBOutlet weak var passwordSignUpTextField: UITextField!
    @IBOutlet weak var confirmPasswordSignUpTextField: UITextField!
    @IBOutlet weak var agreeTheConditionCheckBoxOutlet: UIButton!
    var isChcked = false
    override func viewDidLoad() {
        super.viewDidLoad()
        toggleDisplayingThePasswordText()
    }
    @IBAction func loginWithGoogle(_ sender: UIButton) {
    }
    @IBAction func resetPasswordAction(_ sender: UIButton) {
    }
    @IBAction func loginAction(_ sender: UIButton) {
    }
    @IBAction func navigateToSignUpScreenAction(_ sender: UIButton) {
        presentSignUpScreen()
    }
    @IBAction func navigateToSignInAction(_ sender: Any) {
        presentSignInScreen()
    }
    @IBAction func createAccountAction(_ sender: UIButton) {
    }
    
    @IBAction func agreeTheConditionAction(_ sender: UIButton) {
        toggleTheCheckBox()
    }
    
    
}
