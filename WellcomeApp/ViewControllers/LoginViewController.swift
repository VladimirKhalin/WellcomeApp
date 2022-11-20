//
//  ViewController.swift
//  WellcomeApp
//
//  Created by Vladimir Khalin on 16.11.2022.
//

import UIKit

final class LoginViewController: UIViewController {
    
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    let realUserName = "Vladimir Khalin"
    let realPassword = "q"
    
    // Убираем клавиатуру (Применили ко всему view но можно к конкретному текст полю)
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    // Передача данных по сегвею (prepare)
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarController = segue.destination as? UITabBarController else { return }
        guard let welcomeVC = tabBarController.viewControllers?[0] as? WelcomeViewController else { return }
        welcomeVC.userName = realUserName
        guard let infoNC = tabBarController.viewControllers?[1] as? UINavigationController else { return }
        guard let viewInfo = infoNC.viewControllers.first as? InfoViewController else { return }
        viewInfo.title = realUserName
    }
    // Передача данных по сегвею обратка (unwind)
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }
    
    @IBAction func logInButtonAction() {
        
        if userNameTF.text != realUserName || passwordTF.text != realPassword {
            let title = "Invalid login or password"
            let message = "Please, enter correct login and password"
            
            sendAlertMessage(title: title, message: message)
        }
    }
    // performSegue(withIdentifier: "openWelcomeVC", sender: nil)
    
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
