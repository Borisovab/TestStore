//
//  SignInCoordinator.swift
//  TestStore
//
//  Created by Александр Борисов on 26.03.2023.
//

import UIKit

class SignInCoordinator {

    weak var currentVC: UIViewController?
    var isLoggedIn: Bool = false

    func showTabBar() {
        guard let currentVC = currentVC
        else {
            print("currentVC in SignInCoordinator = nil")
            return
        }

        TabBarBilder().creatTBC(parentVC: currentVC)
    }

    func showLoginVC() {
        guard let currentVC = currentVC
        else {
            print("currentVC in SignInCoordinator = nil")
            return
        }

        LoginBilder().showVC(parentVC: currentVC)

    }

//    func showTabBarAfterLoginVC() {
//        if isLoggedIn {
//            guard let currentVC = currentVC
//            else {
//                print("currentVC in SignInCoordinator = nil")
//                return
//            }
//
//            TabBarBilder().creatTBC(parentVC: currentVC)
//        }
//
//    }

}
