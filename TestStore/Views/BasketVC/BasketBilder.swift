//
//  BasketBilder.swift
//  TestStore
//
//  Created by Александр Борисов on 27.03.2023.
//


import UIKit

class BasketBilder: CreatNavigationControllerProtocol {
    let basketModel = BasketModel()

    func creatVC() -> UINavigationController {
        let vc = BasketViewController()
        vc.viewModel = BasketViewModel(name: basketModel)

        vc.tabBarItem.image = UIImage(named: basketModel.pic)

        let navController = UINavigationController(rootViewController: vc)
        return navController
    }


}
