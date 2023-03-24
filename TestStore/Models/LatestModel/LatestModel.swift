//
//  LatestModel.swift
//  TestStore
//
//  Created by Александр Борисов on 24.03.2023.
//

import Foundation
import UIKit

class LatestModel {
    let category: String
    let goodsName: String
    let price: Int
    let backImage: String

    init(category: String,
         goodsName: String,
         price: Int,
         backImage: String)
    {
        self.category = category
        self.goodsName = goodsName
        self.price = price
        self.backImage = backImage
    }




    
}
