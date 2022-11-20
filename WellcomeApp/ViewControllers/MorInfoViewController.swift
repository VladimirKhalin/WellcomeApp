//
//  MorInfoViewController.swift
//  WellcomeApp
//
//  Created by Vladimir Khalin on 20.11.2022.
//

import UIKit

class MorInfoViewController: UIViewController {
    @IBOutlet var morInfoImage: UIImageView!
    @IBOutlet var morInfo: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        morInfoImage.image = personOne.morInfoPhoto
        morInfo.text = personOne.morInfo
    }
}
