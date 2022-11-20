//
//  CoreBase.swift
//  WellcomeApp
//
//  Created by Vladimir Khalin on 20.11.2022.
//

import Foundation
import UIKit

let personOne = Person(
    
    userName: "Vladimir Khalin",
    password: "q",
    userPhoto: UIImage(named: "VK.jpg")!,
    birthday: "02.10.1977",
    sex: .Male,
    hobby: "Bowling",
    info: "Played 2 perfect games and threw 300 points each",
    morInfo: """
   Bowling is a target sport and recreational activity in which a player rolls a ball toward pins (in pin bowling) or another target (in target bowling). The term bowling usually refers to pin bowling (most commonly ten-pin bowling), though in the United Kingdom and Commonwealth countries, bowling could also refer to target bowling, such as lawn bowls. \n In pin bowling, the goal is to knock over pins on a long playing surface known as a lane. Lanes have a wood or synthetic surface onto which protective lubricating oil is applied in different specified oil patterns that affect ball motion. A strike is achieved when all the pins are knocked down on the first roll, and a spare is achieved if all the pins are knocked over on a second roll. Common types of pin bowling include ten-pin, candlepin, duckpin, nine-pin, and five-pin. The historical game skittles is the forerunner of modern pin bowling. \n In target bowling, the aim is usually to get the ball as close to a mark as possible. The surface in target bowling may be grass, gravel, or synthetic Lawn bowls, bocce, carpet bowls, pétanque, and boules may have both indoor and outdoor varieties. Curling is also related to bowls. /n Bowling is played by 120 million people in more than 90 countries (including 70 million in the United States alone).
""",
    morInfoPhoto: UIImage(named: "Bowling")!
)
