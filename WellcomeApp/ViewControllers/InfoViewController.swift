//
//  InfoViewController.swift
//  WellcomeApp
//
//  Created by Vladimir Khalin on 20.11.2022.
//

import UIKit

final class InfoViewController: UIViewController {

    @IBOutlet var userPhoto: UIImageView!
    @IBOutlet var birthday: UILabel!
    @IBOutlet var sex: UILabel!
    @IBOutlet var hobby: UILabel!
    @IBOutlet var info: UILabel!
    
    var currentUserPhoto: UIImage = UIImage(named: "emptyPhoto")!
    var currentBirthday = ""
    var currentSex = ""
    var currentHobby = ""
    var currentInfo = ""
    
    var morPhoto: UIImage = UIImage(named: "emptyPhoto")!
    var morInfo = ""
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let morInfoView = segue.destination as? MorInfoViewController else { return }
        morInfoView.currentImage = morPhoto
        morInfoView.currentMorInfo = morInfo
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userPhoto.image = currentUserPhoto
        birthday.text = currentBirthday
        sex.text = currentSex
        hobby.text = currentHobby
        info.text = currentInfo
    }
}
