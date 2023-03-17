//
//  SignInPageVC+LoginButtonAction.swift
//  TestStore
//
//  Created by Александр Борисов on 17.03.2023.
//

import UIKit

extension SignInPageViewController {
    func logInButtonPressed() {
        logInButton.addTarget(self, action: #selector(logInButtonAction), for: .touchUpInside)
    }

    @objc func logInButtonAction() {
        coordinator?.showLoginVC()
    }
}
