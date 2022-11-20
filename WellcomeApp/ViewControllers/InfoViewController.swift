//
//  InfoViewController.swift
//  WellcomeApp
//
//  Created by Vladimir Khalin on 20.11.2022.
//

import UIKit

final class InfoViewController: UIViewController {

    @IBOutlet var userPhoto: UIImageView!
    @IBOutlet var dayOfBirthday: UILabel!
    @IBOutlet var sex: UILabel!
    @IBOutlet var hobby: UILabel!
    @IBOutlet var info: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userPhoto.image = personOne.userPhoto
        dayOfBirthday.text = personOne.birthday
        sex.text = "\(personOne.sex)"
        hobby.text = personOne.hobby
        info.text = personOne.info
    }
}
