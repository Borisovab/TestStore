//
//  Page1Bilder.swift
//  TestStore
//
//  Created by Александр Борисов on 27.03.2023.
//

import UIKit

protocol CreatViewControllerProtocol {
    func creatVC() -> UINavigationController
}

class Page1Bilder: CreatViewControllerProtocol {

    let tabPicModel = Page1Model()

    func creatVC() -> UINavigationController {
        let vc = Page1ViewController()
        vc.viewModel = Page1ViewModel(name: tabPicModel)

        vc.tabBarItem.image = UIImage(named: tabPicModel.pic)

        let navController = UINavigationController(rootViewController: vc)
        return navController
    }


}
