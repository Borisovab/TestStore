//
//  LoginBilder.swift
//  TestStore
//
//  Created by Александр Борисов on 26.03.2023.
//

import UIKit


class LoginBilder: CreatVCProtocol {
    func getVC() -> UIViewController {
        let vc = LoginViewController()
        vc.viewModel = LoginViewModel()
        return vc
    }


}
