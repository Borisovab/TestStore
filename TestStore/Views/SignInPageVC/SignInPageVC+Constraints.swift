//
//  SignInPageVC+Constraints.swift
//  TestStore
//
//  Created by Александр Борисов on 16.03.2023.
//

import Foundation
import SnapKit

extension SignInPageViewController {
    func setupConstraints() {
        [signInLabel, signInButtonAndTextFieldsStackView, logInButtonAndLabelStackView, signInByStackView].forEach{ view.addSubview($0) }

        signInLabel.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(120)
            make.leading.trailing.equalToSuperview().inset(40)
            make.height.equalTo(50)
        }

        signInButtonAndTextFieldsStackView.snp.makeConstraints { make in
            make.top.equalTo(signInLabel.snp.bottom).offset(80)
            make.leading.trailing.equalToSuperview().inset(40)
            make.height.equalTo(300)
        }

        logInButtonAndLabelStackView.snp.makeConstraints { make in
            make.top.equalTo(signInButtonAndTextFieldsStackView.snp.bottom).offset(20)
            make.leading.equalToSuperview().offset(42)
            make.width.equalTo(210)
            make.height.equalTo(30)
        }

        signInByStackView.snp.makeConstraints { make in
            make.top.equalTo(logInButtonAndLabelStackView.snp.bottom).offset(50)
            make.centerX.equalToSuperview()
            make.width.equalTo(200)
            make.height.equalTo(100)
        }

    }
}
