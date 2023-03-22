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
        let vc1 = Page1ViewController.genegateVC(viewController: Page1ViewController(), image: UIImage(named: "home"))
        vc1.coordinator = self

        let vc2 = LikeViewController.genegateVC(viewController: LikeViewController(), image: UIImage(named: "heart"))
        vc2.coordinator = self

        let vc3 = BasketViewController.genegateVC(viewController: BasketViewController(), image: UIImage(named: "cart"))
        vc3.coordinator = self

        let vc4 = ChatViewController.genegateVC(viewController: ChatViewController(), image: UIImage(named: "chat"))
        vc4.coordinator = self

        let vc5 = ProfileViewController.genegateVC(viewController: ProfileViewController(), image: UIImage(named: "profile"))
        vc5.coordinator = self
        let array = [vc1, vc2, vc3, vc4, vc5]
        return array
    }

//    func navBarForPage1() {
//        print("start navBarForPage1")
//        let vc1 = Page1ViewController()
//        let navItem = UINavigationItem(title: "Trade by dara")
//        let leftButton = UIBarButtonItem(image: UIImage(named: "back"), landscapeImagePhone: nil, style: .plain, target: nil, action: #selector(qqqq))
//        navItem.leftBarButtonItem = leftButton
//        vc1.coordinator?.navigationController.navigationBar.setItems([navItem], animated: true)
//    }
//    @objc func qqqq() {
//        print("finished navBarForPage1")
//    }


}
