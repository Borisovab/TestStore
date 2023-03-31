//
//  LikeBilder.swift
//  TestStore
//
//  Created by Александр Борисов on 27.03.2023.
//

import UIKit

class LikeBilder: CreatNavigationControllerProtocol {
    let likeModel = LikeModel()

    func creatVC() -> UINavigationController {
        let vc = LikeViewController()
        vc.viewModel = LikeViewModel(name: likeModel)

        vc.tabBarItem.image = UIImage(named: likeModel.pic)

        let navController = UINavigationController(rootViewController: vc)
        return navController
    }


}
