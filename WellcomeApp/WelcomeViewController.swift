//
//  WelcomeViewController.swift
//  WellcomeApp
//
//  Created by Vladimir Khalin on 16.11.2022.
//

import UIKit

class WelcomeViewController: UIViewController {
    @IBOutlet var welcomeUserLabel: UILabel!
    @IBOutlet var backgroundView: UIView!
    @IBOutlet var emojiLabel: UILabel!
    
    var userName: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        welcomeUserLabel.text = "Welcome, \(userName)!"
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = view.bounds
        gradientLayer.colors = [
            UIColor.systemMint.cgColor,
            UIColor.systemRed.cgColor
        ]
        
        backgroundView.layer.addSublayer(gradientLayer)
        
        emojiLabel.text = "💪"
    }
    
    @IBAction func logOutButtonAction() {
        // Тут тоже волшебство. Удаляю этот Акшен и фатал.
        // С ним все работает.
    }
}
