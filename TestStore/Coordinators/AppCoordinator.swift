//
//  AppCoordinator.swift
//  TestStore
//
//  Created by Александр Борисов on 16.03.2023.
//

import UIKit

class AppCoordinator: Coordinator {
    var navigationController: UINavigationController
    var isLoggedIn: Bool = false

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }

    func start() {
        let vc = SignInPageViewController.creatVC(viewController: SignInPageViewController(), title: "")
        vc.coordinator = self
        vc.viewModel = SignInViewModel()
        navigationController.pushViewController(vc, animated: true)
    }

    func showTabBar() {
        let tbc = TabBarController.generateTabBar(tabBarController: TabBarController())
        tbc.coordinator = self
        navigationController.viewControllers.removeAll()
        navigationController.pushViewController(tbc, animated: true)
    }

    func showLoginVC() {
        let vc = LoginViewController.creatVC(viewController: LoginViewController(), title: "Login VC")
        vc.coordinator = self
        vc.viewModel = LoginViewModel()
        vc.viewModel?.isLoggedIn = isLoggedIn
        navigationController.pushViewController(vc, animated: true)
    }
}
