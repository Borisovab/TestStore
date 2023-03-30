//
//  GoodsModel.swift
//  TestStore
//
//  Created by Александр Борисов on 30.03.2023.
//

import Foundation

struct GoodsModel {
    let category: String
    let name: String
    let price: Double
    let discount: Int?
    let backImage: String
}

extension GoodsModel {
    init(from netData: LatestFromJson) {
        category = netData.category
        name = netData.name
        price = Double(netData.price)
        discount = nil
        backImage = netData.image

    }

    init(from netData: FlashSaleFromJson) {
        category = netData.category
        name = netData.name
        price = netData.price
        discount = netData.discount
        backImage = netData.image
    }
}
