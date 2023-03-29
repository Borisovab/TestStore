//
//  SignInPageVC+SignInButtonAction.swift
//  TestStore
//
//  Created by Александр Борисов on 17.03.2023.
//

import UIKit

extension SignInPageViewController {
    func signInButtonPressed() {
        signInButton.addTarget(self, action: #selector(signInButtonAction), for: .touchUpInside)
    }

    @objc func signInButtonAction() {

        guard let viewModel = viewModel
        else { return }

        if viewModel.saveUserData(vc: self, addFirstName: (firstNameTF.text ?? ""), addLastName: (lastNameTF.text ?? ""), addEmail: (emailTF.text ?? "")) {

            coordinator?.showTabBar()
        }
    }
}
