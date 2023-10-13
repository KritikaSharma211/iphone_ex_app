//
//  SecondViewController.swift
//  Expense App
//
//  Created by Kritika Sharma on 28/09/23.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var emailtextfield: UITextField!
    
    @IBOutlet weak var passwordtextfield: UITextField!
    
    @IBOutlet weak var confirmationPassword: UITextField!
    
    @IBOutlet weak var save: UIButton!
    @IBOutlet weak var errorLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        save.layer.cornerRadius = 24.0
        
    }
    private func showErrorMessageIfNeeded(text: String?) {
        errorLabel.isHidden = text == nil
        errorLabel.text = text
    }
    
    @IBAction func saveButton(_ sender: Any) {
        
        guard let email = emailtextfield.text, !email.isEmpty,
                let password = passwordtextfield.text,
                !password.isEmpty,
                let passwordconfirmation = confirmationPassword.text,
                !passwordconfirmation.isEmpty else {
            showErrorMessageIfNeeded(text: "Invalid Form")
            return}
        guard password == passwordconfirmation else {
            showErrorMessageIfNeeded(text: "Password is incorrect")
            return }
        
        print("email: \(email),password: \(password)")
       
        
            
            
            
        }
    }
    
    

