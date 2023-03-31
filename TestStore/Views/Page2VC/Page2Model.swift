//
//  Page2Model.swift
//  TestStore
//
//  Created by Александр Борисов on 31.03.2023.
//

import Foundation

struct Product {
    let category: String
    let name: String
    let price: Double
    let discount: Int?
    let backImage: String

}

extension Product {
    init(from page1: GoodsModel) {
        category = page1.category
        name = page1.name
        price = page1.price
        discount = page1.discount
        backImage = page1.backImage
    }
}


