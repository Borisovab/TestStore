//
//  ImagePickerBilder.swift
//  TestStore
//
//  Created by Александр Борисов on 31.03.2023.
//

import UIKit

protocol CreateImagePickerProtocol {
    func creatImagePicker() -> UIImagePickerController
}


class ImagePickerBilder: CreateImagePickerProtocol {
    func creatImagePicker() -> UIImagePickerController {
        let vc = UIImagePickerController()
        vc.sourceType = .photoLibrary
        vc.allowsEditing = true

        return vc
    }


}

