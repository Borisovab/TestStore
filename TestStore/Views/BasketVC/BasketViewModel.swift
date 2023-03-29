//
//  BasketViewModel.swift
//  TestStore
//
//  Created by Александр Борисов on 27.03.2023.
//

import Foundation

class BasketViewModel {

    let picName: String

    init(name: BasketModel) {
        self.picName = name.pic
    }
}
