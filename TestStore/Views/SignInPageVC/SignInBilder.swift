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

class SignInBilder: CreatVCProtocol, ShowByParentProtocol {

    let signInVC = SignInPageViewController()

    func getVC() -> UIViewController {
        let vc = SignInPageViewController()
        vc.viewModel = SignInViewModel()
        vc.coordinator = SignInCoordinator()
        vc.coordinator?.currentVC = vc

        return vc
    }

    func showVC(parentVC: UIViewController) {
        signInVC.viewModel = SignInViewModel()
        signInVC.coordinator = SignInCoordinator()
        signInVC.coordinator?.currentVC = signInVC
        
        signInVC.modalPresentationStyle = .fullScreen
        parentVC.present(signInVC, animated: true)
    }

//    func getFlag(flag: Bool) {
//        signInVC.coordinator = SignInCoordinator()
//        signInVC.viewModel = SignInViewModel()
//        signInVC.coordinator?.isLoggedIn = flag
//    }

}
