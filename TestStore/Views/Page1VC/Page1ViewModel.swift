//
//  Page1ViewModel.swift
//  TestStore
//
//  Created by Александр Борисов on 27.03.2023.
//

import Foundation

class Page1ViewModel {

    let picName: String

    init(name: TabPicModel) {
        self.picName = name.pic
    }
}
