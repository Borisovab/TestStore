//
//  LoginBilder.swift
//  TestStore
//
//  Created by Александр Борисов on 26.03.2023.
//

import UIKit
protocol LoginBilderProtocol {
    func showVC(parentVC: UIViewController)
}

class LoginBilder: LoginBilderProtocol {
    let loginVC = LoginViewController()

    func showVC(parentVC: UIViewController) {
        loginVC.viewModel = LoginViewModel()
        loginVC.coordinator = LoginCoordinator()


        loginVC.modalPresentationStyle = .fullScreen
        parentVC.present(loginVC, animated: true)
    }






}
