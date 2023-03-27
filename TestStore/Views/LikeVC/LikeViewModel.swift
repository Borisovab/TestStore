//
//  LikeViewModel.swift
//  TestStore
//
//  Created by Александр Борисов on 27.03.2023.
//

import Foundation

class LikeViewModel {

    let picName: String

    init(name: LikeModel) {
        self.picName = name.pic
    }
}
