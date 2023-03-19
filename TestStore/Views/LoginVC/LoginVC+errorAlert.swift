//
//  LoginVC+errorAlert.swift
//  TestStore
//
//  Created by Александр Борисов on 17.03.2023.
//

import UIKit

extension LoginViewController {
    func errorAlert() {
        let alert = UIAlertController(title: "Ошибка", message: "Неверно введены логин и/или пароль", preferredStyle: .alert)
        let actionOk = UIAlertAction(title: "Ok", style: .cancel, handler: nil)
        alert.addAction(actionOk)
        present(alert, animated: true)
    }
}
