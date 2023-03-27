//
//  Page1ViewModel.swift
//  TestStore
//
//  Created by Александр Борисов on 27.03.2023.
//

import Foundation

class Page1ViewModel {

    let picName: String


    init(name: Page1Model) {
        self.picName = name.pic
    }

    func creatPhotoArray() -> [String] {
        let brandPhoto1 = Page1Model.BrandsPhoto(photo: "Brand1")
        let brandPhoto2 = Page1Model.BrandsPhoto(photo: "Brand2")
        let brandPhoto3 = Page1Model.BrandsPhoto(photo: "Brand3")

        let array = [
            brandPhoto1.photo,
            brandPhoto2.photo,
            brandPhoto3.photo
        ]

        return array
    }

    func creatPicArray() -> [String] {
        let pic1 = Page1Model.CategoryPic(pic: "Phones")
        let pic2 = Page1Model.CategoryPic(pic: "Headphones")
        let pic3 = Page1Model.CategoryPic(pic: "Games")
        let pic4 = Page1Model.CategoryPic(pic: "Cars")
        let pic5 = Page1Model.CategoryPic(pic: "Furniture")
        let pic6 = Page1Model.CategoryPic(pic: "Kids")

        let picArray = [
            pic1.pic,
            pic2.pic,
            pic3.pic,
            pic4.pic,
            pic5.pic,
            pic6.pic
        ]

        return picArray
    }
}
