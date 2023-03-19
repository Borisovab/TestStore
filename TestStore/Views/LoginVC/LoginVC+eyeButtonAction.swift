//
//  LoginVC+eyeButtonAction.swift
//  TestStore
//
//  Created by Александр Борисов on 19.03.2023.
//

import UIKit

extension LoginViewController {
    func eyeButtonPressed() {
        eyeButton.addTarget(self, action: #selector(eyeButtonAction), for: .touchUpInside)
    }

    @objc func eyeButtonAction() {
        if passwordTF.isSecureTextEntry == false {
            passwordTF.isSecureTextEntry = true
            eyeButton.setImage(UIImage(systemName: "eye.slash"), for: .normal)
        } else {
            passwordTF.isSecureTextEntry = false
            eyeButton.setImage(UIImage(systemName: "eye"), for: .normal)
        }
    }
}
