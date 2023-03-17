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
        coordinator?.showTabBar()
    }
}
