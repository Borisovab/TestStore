//
//  SignInPageVC+LoginButtonAction.swift
//  TestStore
//
//  Created by Александр Борисов on 17.03.2023.
//

import UIKit

extension SignInPageViewController {
    func logButtonPressed() {
        logButton.addTarget(self, action: #selector(logButtonAction), for: .touchUpInside)
    }

    @objc func logButtonAction() {
        coordinator?.showLoginVC()
    }
}
