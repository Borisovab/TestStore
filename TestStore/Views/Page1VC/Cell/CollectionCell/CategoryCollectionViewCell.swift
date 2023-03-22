//
//  CategoryCollectionViewCell.swift
//  TestStore
//
//  Created by Александр Борисов on 22.03.2023.
//

import UIKit
import SnapKit

class CategoryCollectionViewCell: UICollectionViewCell {

    var picImage: UIImageView = {
        let image = UIImageView()
        return image
    }()

    var nameLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.textColor = #colorLiteral(red: 0.7095205188, green: 0.7134285569, blue: 0.7268471122, alpha: 1)
        label.font = UIFont.systemFont(ofSize: 9, weight: .medium)
        return label
    }()


    private func setupConstraints() {
        [picImage, nameLabel].forEach{ contentView.addSubview($0) }

        picImage.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(5)
            make.centerX.equalToSuperview()
            make.width.equalTo(picImage.snp.height)

        }

        nameLabel.snp.makeConstraints { make in
            make.top.equalTo(picImage.snp.bottom)
            make.leading.trailing.equalToSuperview().inset(5)
            make.height.equalTo(30)
            make.bottom.equalToSuperview().offset(5)

        }
    }

    func configureCollctionCell(image: UIImage?, name: String) {
        self.picImage.image = image
        self.nameLabel.text = name

        setupConstraints()
        print("configureCollctionCell from Collection Cell")
    }
}
