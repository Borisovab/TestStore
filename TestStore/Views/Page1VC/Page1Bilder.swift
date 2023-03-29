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

        let imageName = vc.viewModel?.navBarData.imageName
        let location = vc.viewModel?.navBarData.location
        let avatarImage = vc.viewModel?.navBarData.avatarImageName

        let burgerButton = vc.creatCustomButton(
            imageName: imageName ?? "")

        let customTitle = vc.creatCustomView(
            location: location ?? "",
            avatarImage: avatarImage ?? "")

        vc.navigationItem.leftBarButtonItem = burgerButton
        vc.navigationItem.titleView = customTitle

        let navController = UINavigationController(rootViewController: vc)
        
        return navController
    }
}
