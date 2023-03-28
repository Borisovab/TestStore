//
//  LoginCoordinator.swift
//  TestStore
//
//  Created by Александр Борисов on 26.03.2023.
//

import UIKit

class LoginCoordinator {

    weak var currentVC: UIViewController?
    var isLoggedIn: Bool = false

    func showTabBar() {
        guard let currentVC = currentVC else {
            print("currentVC in LoginCoordinator = nil")
            return
        }

        TabBarBilder().creatTBC(parentVC: currentVC)
    }





//    func dismissCurrent(flaf: Bool) {
//        let vc = SignInPageViewController()
//        vc.coordinator = SignInCoordinator()
//        vc.viewModel = SignInViewModel()
//        vc.coordinator?.isLoggedIn = flaf
//        currentVC?.dismiss(animated: false)
//    }


//    func dismissLogin(flaf: Bool) {
//        SignInBilder().getFlag(flag: flaf)
//
//        currentVC?.dismiss(animated: false)
//    }


}
