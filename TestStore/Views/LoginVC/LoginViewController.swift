//
//  LoginViewController.swift
//  TestStore
//
//  Created by Александр Борисов on 16.03.2023.
//

import UIKit

class LoginViewController: UIViewController, AdapterViewController {

    weak var coordinator: AppCoordinator?

    var greetingsLabel: UILabel = {
        let label = UILabel()
        label.text = "Welcom back"
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 34, weight: .semibold)
        return label
    }()

    var loginTF: UITextField = {
        let textField = UITextField()
        textField.placeholder = "First name"
        textField.font = UIFont.systemFont(ofSize: 13, weight: .heavy)
        textField.textAlignment = .center
        textField.backgroundColor = #colorLiteral(red: 0.9106831551, green: 0.9057169557, blue: 0.9101112485, alpha: 1)
        textField.layer.cornerRadius = 20
        return textField
    }()

    var passwordTF: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Password"
        textField.isSecureTextEntry = true
        textField.font = UIFont.systemFont(ofSize: 13, weight: .heavy)
        textField.textAlignment = .center
        textField.backgroundColor = #colorLiteral(red: 0.9106831551, green: 0.9057169557, blue: 0.9101112485, alpha: 1)
        textField.layer.cornerRadius = 20
        return textField
    }()

    var eyeButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(systemName: "eye.slash"), for: .normal)
//        button.alpha = 0.5
        return button
    }()

    var logInButton: UIButton = {
        let button = UIButton()
        button.setTitle("Login", for: .normal)
        button.backgroundColor = #colorLiteral(red: 0.314901948, green: 0.3299148679, blue: 0.8127909303, alpha: 1)
        button.layer.cornerRadius = 20
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)
        setupConstraints()
    }


}
