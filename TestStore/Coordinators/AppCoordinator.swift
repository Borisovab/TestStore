//
//  AppCoordinator.swift
//  TestStore
//
//  Created by Александр Борисов on 16.03.2023.
//

import UIKit

class AppCoordinator: Coordinator {
    var navigationController: UINavigationController

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }

    func start() {
        let vc = SignInPageViewController.creatVC(viewController: SignInPageViewController(), title: "")
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
}
