//
//  ViewController.swift
//  TestStore
//
//  Created by Александр Борисов on 16.03.2023.
//

import UIKit

class SignInPageViewController: UIViewController, AdapterViewController {

    weak var coordinator: AppCoordinator?

    var signInLabel: UILabel = {
        let label = UILabel()
        label.text = "Sign in"
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 34, weight: .semibold)
        return label
    }()

    //MARK: - StackView for textFields and Sign in button
    lazy var signInButtonAndTextFieldsStackView: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.spacing = 40
        stack.alignment = .fill
        stack.distribution = .fillEqually

        [firstNameTF, lastNameTF, emailTF, signInButton].forEach{ stack.addArrangedSubview($0) }
        return stack
    }()

    var firstNameTF: UITextField = {
        let textField = UITextField()
        textField.placeholder = "First name"
        textField.font = UIFont.systemFont(ofSize: 13, weight: .heavy)
        textField.textAlignment = .center
        textField.backgroundColor = #colorLiteral(red: 0.9106831551, green: 0.9057169557, blue: 0.9101112485, alpha: 1)
        textField.layer.cornerRadius = 20
        return textField
    }()

    var lastNameTF: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Last name"
        textField.font = UIFont.systemFont(ofSize: 13, weight: .heavy)
        textField.textAlignment = .center
        textField.backgroundColor = #colorLiteral(red: 0.9106831551, green: 0.9057169557, blue: 0.9101112485, alpha: 1)
        textField.layer.cornerRadius = 20
        return textField
    }()

    var emailTF: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Email"
        textField.font = UIFont.systemFont(ofSize: 13, weight: .heavy)
        textField.textAlignment = .center
        textField.backgroundColor = #colorLiteral(red: 0.9106831551, green: 0.9057169557, blue: 0.9101112485, alpha: 1)
        textField.layer.cornerRadius = 20
        return textField
    }()

    var signInButton: UIButton = {
        let button = UIButton()
        button.setTitle("Sign in", for: .normal)
        button.backgroundColor = #colorLiteral(red: 0.314901948, green: 0.3299148679, blue: 0.8127909303, alpha: 1)
        button.layer.cornerRadius = 20
        return button
    }()


    //MARK: - StackView for alreadyHaveLabel and Log in button
    lazy var logInButtonAndLabelStackView: UIStackView = {
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.spacing = 20
        stack.alignment = .fill
        stack.distribution = .fill

        [alreadyHaveLabel, logInButton].forEach{ stack.addArrangedSubview($0) }
        return stack
    }()

    var alreadyHaveLabel: UILabel = {
        let label = UILabel()
        label.text = "Already have an account?"
        label.font = UIFont.systemFont(ofSize: 11, weight: .light)
        label.textColor = #colorLiteral(red: 0.2605174184, green: 0.2605243921, blue: 0.260520637, alpha: 1)
        return label
    }()

    var logInButton: UIButton = {
        let button = UIButton()
        button.setTitle("Log in", for: .normal)
        button.setTitleColor(UIColor.systemIndigo, for: .normal)
        button.backgroundColor = .clear
        return button
    }()

    //MARK: - StackView for Sign in with Google/Apple buttons
    lazy var signInByStackView: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.spacing = 20
        stack.alignment = .fill
        stack.distribution = .fillEqually

        [signInByGoogleButton, signInByAppleButton].forEach{ stack.addArrangedSubview($0) }
        return stack
    }()

    var signInByGoogleButton: UIButton = {
        let button = UIButton()
        button.setTitle("Sign in with Google", for: .normal)
        button.setTitleColor(UIColor.black, for: .normal)
        button.titleLabel?.textAlignment = .left
        button.backgroundColor = .clear
        return button
    }()

    var signInByAppleButton: UIButton = {
        let button = UIButton()
        button.setTitle("Sign in with Apple", for: .normal)
        button.setTitleColor(UIColor.black, for: .normal)
        button.titleLabel?.textAlignment = .left
        button.backgroundColor = .clear
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0.9821448922, green: 0.9722177386, blue: 0.9982008338, alpha: 1)
        setupConstraints()
        
        signInButtonPressed()
        logInButtonPressed()
    }


}

