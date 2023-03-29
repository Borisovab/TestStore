//
//  LoginVC+logInButtonAction.swift
//  TestStore
//
//  Created by Александр Борисов on 17.03.2023.
//

import UIKit

extension LoginViewController {
    func logInButtonPressed() {
        logInButton.addTarget(self, action: #selector(logInButtonAction), for: .touchUpInside)
    }

    @objc func logInButtonAction() {
        print("tap")
        guard let viewModel = viewModel
        else { return }

        viewModel.userPressedLogInButton(login: (loginTF.text ?? ""))

        if viewModel.isLoggedIn {
            coordinator?.isLoggedIn = viewModel.isLoggedIn
            coordinator?.showTabBar()

        } else {
            UtilityFunction().simpleAlert(vc: self, title: "Ошибка", message: "Неверно введен логин")
        }
    }
}
