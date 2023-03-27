//
//  FlashModel.swift
//  TestStore
//
//  Created by Александр Борисов on 24.03.2023.
//

import Foundation

struct FlashModel {
    let category: String
    let goodsName: String
    let price: Double
    let discount: Int
    let backImage: String
}

extension FlashModel {
    init(from netData: FlashSaleFromJson) {
        category = netData.category
        goodsName = netData.name
        price = netData.price
        discount = netData.discount
        backImage = netData.image
    }
}
