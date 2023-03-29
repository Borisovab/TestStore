//
//  LatestFromJson.swift
//  TestStore
//
//  Created by Александр Борисов on 24.03.2023.
//

import Foundation

struct LatestObjact: Decodable {
    let latest: [LatestFromJson]
}

struct LatestFromJson: Decodable {
    let category: String
    let name: String
    let price: Int
    let image: String

    enum CodingKeys: String, CodingKey {
        case category
        case name
        case price
        case image = "image_url"
    }

}
