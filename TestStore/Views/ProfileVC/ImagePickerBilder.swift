//
//  ImagePickerBilder.swift
//  TestStore
//
//  Created by Александр Борисов on 31.03.2023.
//

import UIKit

protocol CreateImagePickerProtocol {
    func creatImagePicker(parent: UIViewController)
}


class ImagePickerBilder: CreateImagePickerProtocol {
    func creatImagePicker(parent: UIViewController) {

        let ipc = UIImagePickerController()
        ipc.sourceType = .photoLibrary
        ipc.allowsEditing = true
        ipc.delegate = parent as? UIImagePickerControllerDelegate & UINavigationControllerDelegate

        parent.present(ipc, animated: true)


    }


}

