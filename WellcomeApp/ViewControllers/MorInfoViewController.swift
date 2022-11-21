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
    
    var currentImage: UIImage = UIImage(named: "emptyPhoto")!
    var currentMorInfo = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        morInfoImage.image = currentImage
        morInfo.text = currentMorInfo
    }
}
