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

    func logoutToSignInVC() {
        let vc = SignInPageViewController.creatVC(viewController: SignInPageViewController(), title: "")
        vc.coordinator = self
        vc.viewModel = SignInViewModel()
        navigationController.viewControllers.removeAll()
        navigationController.pushViewController(vc, animated: true)
    }


    func creatVCForTabBar() -> [UIViewController] {
        let vc1 = HomeViewController.genegateVC(viewController: HomeViewController(), image: UIImage(named: "home"))
        let vc2 = LikeViewController.genegateVC(viewController: LikeViewController(), image: UIImage(named: "heart"))
        let vc3 = BasketViewController.genegateVC(viewController: BasketViewController(), image: UIImage(named: "cart"))
        let vc4 = ChatViewController.genegateVC(viewController: ChatViewController(), image: UIImage(named: "chat"))
        let vc5 = ProfileViewController.genegateVC(viewController: ProfileViewController(), image: UIImage(named: "profile"))

        vc1.coordinator = self
        vc2.coordinator = self
        vc3.coordinator = self
        vc4.coordinator = self
        vc5.coordinator = self

        let array = [vc1, vc2, vc3, vc4, vc5]

        return array
    }


}
