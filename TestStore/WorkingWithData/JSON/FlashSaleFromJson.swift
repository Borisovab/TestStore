//
//  FlashSaleFromJson.swift
//  TestStore
//
//  Created by Александр Борисов on 24.03.2023.
//

import Foundation

struct FlashSaleObject: Decodable {
    let flashSale: [FlashSaleFromJson]

    enum CodingKeys: String, CodingKey {
        case flashSale = "flash_sale"
    }
}

struct FlashSaleFromJson: Decodable {
    let category: String
    let name: String
    let price: Double
    let discount: Int
    let image: String

    enum CodingKeys: String, CodingKey {
        case category
        case name
        case price
        case discount
        case image = "image_url"
    }
}

