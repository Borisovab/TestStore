//
//  LoginVC+Constraints.swift
//  TestStore
//
//  Created by Александр Борисов on 17.03.2023.
//

import UIKit
import SnapKit

extension LoginViewController {
    func setupConstraints() {
        [greetingsLabel, loginTF, passwordTF, eyeButton, logInButton].forEach{ view.addSubview($0) }

        greetingsLabel.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(150)
            make.leading.trailing.equalToSuperview().inset(40)
            make.height.equalTo(50)
        }

        loginTF.snp.makeConstraints { make in
            make.top.equalTo(greetingsLabel.snp.bottom).offset(80)
            make.leading.trailing.equalToSuperview().inset(40)
            make.height.equalTo(40)
        }

        passwordTF.snp.makeConstraints { make in
            make.top.equalTo(loginTF.snp.bottom).offset(30)
            make.leading.trailing.equalToSuperview().inset(40)
            make.height.equalTo(40)
        }

        eyeButton.snp.makeConstraints { make in
            make.top.equalTo(passwordTF.snp.top)
            make.trailing.equalTo(passwordTF.snp.trailing)
            make.height.equalTo(40)
            make.width.equalTo(50)
        }

        logInButton.snp.makeConstraints { make in
            make.top.equalTo(passwordTF.snp.bottom).offset(80)
            make.leading.trailing.equalToSuperview().inset(40)
            make.height.equalTo(60)
        }
    }
}
