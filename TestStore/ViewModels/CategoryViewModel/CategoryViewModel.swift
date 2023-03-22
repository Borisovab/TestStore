//
//  CategoryViewModel.swift
//  TestStore
//
//  Created by Александр Борисов on 22.03.2023.
//

import Foundation

class CategoryViewModel {
    var model: CategoryModel?

    func fillModel() -> [String] {
        var array = [String]()
        let pic1 = "Phones"
        let pic2 = "Headphones"
        let pic3 = "Games"
        let pic4 = "Cars"
        let pic5 = "Furniture"
        let pic6 = "Kids"

        array = [pic1, pic2, pic3, pic4, pic5, pic6]
        return array
    }


}
