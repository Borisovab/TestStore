//
//  SignInPageVC+errorAlert.swift
//  TestStore
//
//  Created by Александр Борисов on 17.03.2023.
//

import UIKit

extension SignInPageViewController {
    func errorAlert() {
        let alert = UIAlertController(title: "Ошибка", message: "Пожалуйста, заполните все поля для регистрации личного кабинета", preferredStyle: .alert)
        let actionOk = UIAlertAction(title: "Ok", style: .cancel, handler: nil)
        alert.addAction(actionOk)
        present(alert, animated: true)
    }

    func errorNameOrEmailAlert() {
        let alert = UIAlertController(title: "Ошибка", message: "Пользователь с таким именем и/или почтой уже существуют", preferredStyle: .alert)
        let actionOk = UIAlertAction(title: "Ok", style: .cancel, handler: nil)
        alert.addAction(actionOk)
        present(alert, animated: true)
    }
}
