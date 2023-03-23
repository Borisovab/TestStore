//
//  AdapterCell.swift
//  TestStore
//
//  Created by Александр Борисов on 23.03.2023.
//

import UIKit

protocol AdapterTVCell {
    func creatCategory(viewModel: CategoryViewModel) -> [String]
}

extension AdapterTVCell {
    func creatCategory(viewModel: CategoryViewModel) -> [String] {
        let model = viewModel.fillModel()
        return model
    }
}
