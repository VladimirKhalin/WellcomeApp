//
//  ViewController.swift
//  WellcomeApp
//
//  Created by Vladimir Khalin on 16.11.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    let realUserName = "Andrey"
    let realPassword = "qwert"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func logInButtonAction() {
        
        if userNameTF.text == realUserName && passwordTF.text == realPassword {
           
            print("Имия и пароль совпадаеют")
            
        } else {
            let title = "Invalid login or password"
            let message = "Please, enter correct login and password"
            
            sendAlertMessage(title: title, message: message)
        }
    }
    
    @IBAction func forgotUserNameButtonAction() {
        
        let title = "Input correct User Name:"
        let message = "\(realUserName)"
        
        sendAlertMessage(title: title, message: message)
    }
    
    @IBAction func forgotPassButtonAction() {
        
        let title = "Input correct Password:"
        let message = "\(realPassword)"
        
        sendAlertMessage(title: title, message: message)
    }
    
    private func sendAlertMessage(title: String, message: String) {
        
        let alert = UIAlertController(
            title: "\(title)",
            message: "\(message)",
            preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            self.passwordTF.text = ""
            self.userNameTF.text = ""
        }
        
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
