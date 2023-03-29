//
//  UIImageView+extension.swift
//  TestStore
//
//  Created by Александр Борисов on 24.03.2023.
//

import UIKit

extension UIImageView {
    func showImage(with url: URL?) {
        guard let url = url else {
            return
        }

        URLSession.shared.dataTask(with: url) { [weak self] data, _, _ in
            guard let data = data else {
                return
            }

            let image = UIImage(data: data)
            DispatchQueue.main.async {
                self?.image = image
            }
        }.resume()
    }
}

