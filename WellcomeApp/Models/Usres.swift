//
//  Usres.swift
//  WellcomeApp
//
//  Created by Vladimir Khalin on 20.11.2022.
//

import UIKit

struct User {
    let name: String
    let password: String
    let person: Person
}

struct Person {
    let userPhoto: UIImage
    let birthday: String
    let sex: sexType
    let hobby: String
    let info: String
    let morInfo: String
    let morInfoPhoto: UIImage
}

enum sexType {
    case Male
    case Female
}




//class Users {
//    let userName: String
//    let password: String
//
//    init(userName: String, password: String) {
//        self.userName = userName
//        self.password = password
//    }
//}
//
//class Person: Users {
//    let userPhoto: UIImage
//    let birthday: String
//    let sex: sexType
//    let hobby: String
//    let info: String
//    let morInfo: String
//    let morInfoPhoto: UIImage
//
//
//    init(userName: String, password: String, userPhoto: UIImage, birthday: String, sex: sexType, hobby: String, info: String, morInfo: String, morInfoPhoto: UIImage) {
//        self.userPhoto = userPhoto
//        self.birthday = birthday
//        self.sex = sex
//        self.hobby = hobby
//        self.info = info
//        self.morInfo = morInfo
//        self.morInfoPhoto = morInfoPhoto
//
//        super.init(userName: userName, password: password)
//    }
//}






