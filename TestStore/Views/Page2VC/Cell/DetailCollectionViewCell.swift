//
//  DetailCollectionViewCell.swift
//  TestStore
//
//  Created by Александр Борисов on 02.04.2023.
//

import UIKit

class DetailCollectionViewCell: UICollectionViewCell {

    var picImage: UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleAspectFit
        return image
    }()

    var likeAndShareButtonsView = LikeAndShareButtons()

    func configureLatestCollectionCell(image: UIImage?) {
        self.picImage.image = image

        setupConstraints()
        likeAndShareButtonsView.backgroundColor = #colorLiteral(red: 0.9179503322, green: 0.931353569, blue: 0.9500345588, alpha: 1)
        likeAndShareButtonsView.layer.cornerRadius = 15
    }



    private func setupConstraints() {
        [picImage, likeAndShareButtonsView].forEach{ contentView.addSubview($0) }

        picImage.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.leading.equalToSuperview()
            make.trailing.equalToSuperview().offset(-50)
            make.height.equalTo(picImage.snp.width)
        }

        likeAndShareButtonsView.snp.makeConstraints { make in
            make.centerX.equalTo(picImage.snp.trailing)
            make.bottom.equalTo(picImage.snp.bottom).offset(-28)
            make.height.equalTo(95)
            make.width.equalTo(42)
        }
    }
    
}
