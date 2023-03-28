//
//  SignInBilder.swift
//  TestStore
//
//  Created by Александр Борисов on 26.03.2023.
//

import UIKit

protocol CreatVCProtocol {
    func getVC() -> UIViewController
}

class SignInBilder: CreatVCProtocol {
    func getVC() -> UIViewController {
        let vc = SignInPageViewController()
        vc.viewModel = SignInViewModel()
        vc.coordinator = SignInCoordinator()

        return vc
    }
}
