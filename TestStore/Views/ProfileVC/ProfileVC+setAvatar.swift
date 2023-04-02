//
//  ProfileVC+setAvatar.swift
//  TestStore
//
//  Created by Александр Борисов on 30.03.2023.
//

import UIKit

extension ProfileViewController {

    func changePhotoButtonPressed() {
        self.changePhotoButton.addTarget(self, action: #selector(openGallery), for: .touchUpInside)
    }

    @objc func openGallery() {
        guard let coordinator = coordinator
        else { return }

        coordinator.showImagePickerController(viewController: self)
    }
}


//MARK: - UIImagePickerControllerDelegate, UINavigationControllerDelegate

extension ProfileViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {

        let data = convertFromUIImageToDict(info)

        if let editingImage = data[convertInfoKey(UIImagePickerController.InfoKey.editedImage)] as? UIImage {
            self.avatar.image = editingImage
        }
        picker.dismiss(animated: true)
    }


    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        self.dismiss(animated: true)
    }


    func convertFromUIImageToDict(_ input: [UIImagePickerController.InfoKey: Any]) -> [String: Any] {
        return Dictionary(uniqueKeysWithValues: input.map{ key, value in
            (key.rawValue, value)
        })
    }


    func convertInfoKey(_ input: UIImagePickerController.InfoKey) -> String {
        return input.rawValue
    }

}
