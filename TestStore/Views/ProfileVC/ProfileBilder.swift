//
//  ProfileBilder.swift
//  TestStore
//
//  Created by Александр Борисов on 27.03.2023.
//

import UIKit

class ProfileBilder: CreatViewControllerProtocol {

    let profileModel = ProfileModel()

    func creatVC() -> UINavigationController {
        let vc = ProfileViewController()
        vc.viewModel = ProfileViewModel(model: profileModel)


        vc.coordinator = ProfileCoordinator()
        vc.coordinator?.currentVC = vc

        vc.tabBarItem.image = UIImage(named: profileModel.picBarItem)


        let navController = UINavigationController(rootViewController: vc)
        return navController
    }


}
