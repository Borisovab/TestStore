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
        guard let currentVC = currentVC else { return }

        TabBarBilder().creatTBC(parentVC: currentVC)
    }
}
