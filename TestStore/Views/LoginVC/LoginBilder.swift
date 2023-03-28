//
//  LoginBilder.swift
//  TestStore
//
//  Created by Александр Борисов on 26.03.2023.
//

import UIKit
protocol ShowByParentProtocol {
    func showVC(parentVC: UIViewController)
}

class LoginBilder: ShowByParentProtocol {
    let loginVC = LoginViewController()

    func showVC(parentVC: UIViewController) {
        loginVC.viewModel = LoginViewModel()
        loginVC.coordinator = LoginCoordinator()
        loginVC.coordinator?.currentVC = loginVC

        loginVC.modalPresentationStyle = .fullScreen
        parentVC.present(loginVC, animated: true)
    }




}
