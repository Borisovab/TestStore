//
//  ProfileCoordinator.swift
//  TestStore
//
//  Created by Александр Борисов on 27.03.2023.
//

import UIKit

class ProfileCoordinator {
    weak var currentVC: UIViewController?

    func showSignInVC() {
        guard let currentVC = currentVC else {
            print("currentVC in ProfileCoordinator = nil")
            return
        }
        SignInBilder().showVC(parentVC: currentVC)
    }
}
