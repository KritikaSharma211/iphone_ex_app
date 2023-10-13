//
//  ViewController.swift
//  Expense App
//
//  Created by Kritika Sharma on 28/09/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var emailTextfield: UITextField!
    
    @IBOutlet weak var passwordTextfield: UITextField!
    
    @IBOutlet weak var signin: UIButton!
    
    @IBOutlet weak var signup: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        signin.layer.cornerRadius = 24.0
        signup.layer.cornerRadius = 24.0
    }
    
    @IBAction func SignInButton(_ sender: UIButton) {
        
        
        if (emailTextfield.text?.isValidEmail)! {
            print("Email is Valid")
        }else {
            print("Email is not Valid")
        }
        if (passwordTextfield.text?.isPasswordValid)! {
            print("Password is Valid")
        }else {
            print("Password is Invalid")
        }
         
    }
    
    @IBAction func SignUpButton(_ sender: UIButton) {
     //   guard let email = emailTextfield.text, !email.isEmpty, let password = passwordTextfield.text else {
       //     return}
        
    }
}
extension String {
    var isPasswordValid: Bool {
        let passwordTest = NSPredicate(format: "SELF MATCHES%@","^(?=.*[a-z])(?=.*[$@$#!%*?&])[A-Za-z\\d$@$#!%*?&]{8,}")
        return passwordTest.evaluate(with: self)
    }
    var isValidEmail: Bool {
        let emailRegex = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,3}"
        
        let emailTest = NSPredicate(format:"SELF MATCHES%@",emailRegex)
        return emailTest.evaluate(with: self)
    }
}
