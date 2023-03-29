//
//  LatestModel.swift
//  TestStore
//
//  Created by Александр Борисов on 24.03.2023.
//

import Foundation

struct LatestModel {
    let category: String
    let goodsName: String
    let price: Int
    let backImage: String
}

extension LatestModel {
    init(from netData: LatestFromJson) {
        category = netData.category
        goodsName = netData.name
        price = netData.price
        backImage = netData.image
    }
}
