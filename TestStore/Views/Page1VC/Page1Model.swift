//
//  Model.swift
//  TestStore
//
//  Created by Александр Борисов on 27.03.2023.
//

import Foundation

struct Page1Model {
    let pic = "home"
    var photo = BrandsPhoto(photo: "")

    struct BrandsPhoto {
        let photo: String
    }

    struct CategoryPic {
        let pic: String
    }

    struct NavBarData {
        let imageName: String
        let avatarImageName: String
        let location: String
    }
}
