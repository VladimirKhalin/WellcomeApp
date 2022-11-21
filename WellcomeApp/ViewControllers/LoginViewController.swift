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
    
    let personOne = User(
        name: "Vladimir Khalin",
        password: "q",
        person: Person(
            userPhoto: UIImage(named: "VK.jpg")!,
            birthday: "02.10.1977",
            sex: .Male,
            hobby: "Bowling",
            info: "Played 2 perfect games and threw 300 points each",
            morInfo: """
           Bowling is a target sport and recreational activity in which a player rolls a ball toward pins (in pin bowling) or another target (in target bowling). The term bowling usually refers to pin bowling (most commonly ten-pin bowling), though in the United Kingdom and Commonwealth countries, bowling could also refer to target bowling, such as lawn bowls. \n In pin bowling, the goal is to knock over pins on a long playing surface known as a lane. Lanes have a wood or synthetic surface onto which protective lubricating oil is applied in different specified oil patterns that affect ball motion. A strike is achieved when all the pins are knocked down on the first roll, and a spare is achieved if all the pins are knocked over on a second roll. Common types of pin bowling include ten-pin, candlepin, duckpin, nine-pin, and five-pin. The historical game skittles is the forerunner of modern pin bowling. \n In target bowling, the aim is usually to get the ball as close to a mark as possible. The surface in target bowling may be grass, gravel, or synthetic Lawn bowls, bocce, carpet bowls, pétanque, and boules may have both indoor and outdoor varieties. Curling is also related to bowls. \n Bowling is played by 120 million people in more than 90 countries (including 70 million in the United States alone).
           """,
            morInfoPhoto: UIImage(named: "Bowling")!))
    
    // Убираем клавиатуру (Применили ко всему view но можно к конкретному текст полю)
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    // Передача данных по сегвею (prepare)
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarController = segue.destination as? UITabBarController else { return }
        guard let welcomeVC = tabBarController.viewControllers?.first as? WelcomeViewController else { return }
        welcomeVC.userName = personOne.name
        guard let infoNC = tabBarController.viewControllers?.last as? UINavigationController else { return }
        guard let viewInfo = infoNC.viewControllers.first as? InfoViewController else { return }
        viewInfo.title = personOne.name
        viewInfo.currentUserPhoto = personOne.person.userPhoto
        viewInfo.currentBirthday = personOne.person.birthday
        viewInfo.currentSex = "\(personOne.person.sex)"
        viewInfo.currentHobby = personOne.person.hobby
        viewInfo.currentInfo = personOne.person.info
        viewInfo.morPhoto = personOne.person.morInfoPhoto
        viewInfo.morInfo = personOne.person.morInfo
    }
    
    // Передача данных по сегвею обратка (unwind)
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }
    
    @IBAction func logInButtonAction() {
        if userNameTF.text != personOne.name || passwordTF.text != personOne.password {
            sendAlertMessage(title: "Invalid login or password", message: "Please, enter correct login and password")
        }
    }
    // performSegue(withIdentifier: "openWelcomeVC", sender: nil)
    
    @IBAction func forgotUserNameButtonAction() {
        sendAlertMessage(title: "Input correct User Name:", message: "\(personOne.name)")
    }
    
    @IBAction func forgotPassButtonAction() {
        sendAlertMessage(title: "Input correct Password:", message: "\(personOne.password)")
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
