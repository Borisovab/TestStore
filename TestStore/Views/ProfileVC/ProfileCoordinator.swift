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
        guard let currentVC = currentVC else { return }
        SignInBilder().showVC(parentVC: currentVC)
    }

    func configImagePicker() -> UIImagePickerController {
        let vc = ImagePickerBilder().creatImagePicker()
        return vc
    }
}

