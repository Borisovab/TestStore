//
//  BrandsCollectionViewCell.swift
//  TestStore
//
//  Created by Александр Борисов on 24.03.2023.
//

import UIKit

class BrandsCollectionViewCell: UICollectionViewCell {

    private var picImage: UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleAspectFit
        return image
    }()

    func configureBrandsCollectionViewCell(image: UIImage?) {
        self.picImage.image = image

        setupConstraints()
    }


    private func setupConstraints() {
        [picImage].forEach{ contentView.addSubview($0) }

        picImage.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.leading.trailing.equalToSuperview()
            make.bottom.equalToSuperview()
        }
    }
}
