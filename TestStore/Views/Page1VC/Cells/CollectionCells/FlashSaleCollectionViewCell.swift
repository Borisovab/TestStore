//
//  FlashSaleCollectionViewCell.swift
//  TestStore
//
//  Created by Александр Борисов on 24.03.2023.
//

import UIKit
import SnapKit

class FlashSaleCollectionViewCell: UICollectionViewCell {

    var picAva: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "pic")
        image.contentMode = .scaleAspectFit
        return image
    }()

    var picImage: UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleAspectFit
        return image
    }()


    var categoryLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        label.backgroundColor = #colorLiteral(red: 0.7095205188, green: 0.7134285569, blue: 0.7268471122, alpha: 1)
        label.font = UIFont.systemFont(ofSize: 7, weight: .medium)
        label.font = UIFont(name: UIFont.fontNames(forFamilyName: "Montserrat")[0], size: 8)
        return label
    }()

    var goodsNameLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .left
        label.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        label.font = UIFont(name: UIFont.fontNames(forFamilyName: "Montserrat")[0], size: 8)
        label.numberOfLines = 0
        return label
    }()

    var costLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        label.font = UIFont(name: UIFont.fontNames(forFamilyName: "Montserrat")[0], size: 8)
        return label
    }()

    var discountLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        label.backgroundColor = #colorLiteral(red: 0.9764705882, green: 0.2274509804, blue: 0.2274509804, alpha: 1)
        label.font = UIFont(name: UIFont.fontNames(forFamilyName: "Montserrat")[0], size: 8)
        return label
    }()

    var addToBasketButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "plus"), for: .normal)
        return button
    }()

    var likeButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "roundedHeart"), for: .normal)
        return button
    }()

    func configureFlashSaleCollectionViewCell(category: String, name: String, prise: String, discount: String) {
        self.categoryLabel.text = category
        self.goodsNameLabel.text = name
        self.costLabel.text = prise
        self.discountLabel.text = discount

        setupConstraints()
        print("configure FlashSaleCollectionViewCell successfully")
    }

    private func setupConstraints() {
        [picImage,
         picAva,
         categoryLabel,
         goodsNameLabel,
         costLabel,
         discountLabel,
         likeButton,
         addToBasketButton]
            .forEach{ contentView.addSubview($0) }


        picImage.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.leading.trailing.equalToSuperview()
            make.bottom.equalToSuperview()
        }

        picAva.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(7.5)
            make.leading.equalToSuperview().offset(7.5)
            make.trailing.equalTo(discountLabel.snp.leading).offset(-85.5)
            make.width.height.equalTo(24)
        }

        categoryLabel.snp.makeConstraints { make in
            make.top.equalTo(picAva.snp.bottom).offset(89.5)
            make.leading.equalToSuperview().offset(10)
            make.trailing.equalToSuperview().offset(-114.42)
            make.height.equalTo(17)
        }

        goodsNameLabel.snp.makeConstraints { make in
            make.top.equalTo(categoryLabel.snp.bottom).offset(11.38)
            make.leading.equalToSuperview().offset(9.51)
            make.trailing.equalToSuperview().offset(-82.29)
            make.height.equalTo(29.74)
        }

        costLabel.snp.makeConstraints { make in
            make.top.equalTo(goodsNameLabel.snp.bottom).offset(16)
            make.leading.equalToSuperview().offset(10.53)
            make.trailing.equalTo(likeButton.snp.leading).offset(-57.97)
            make.height.equalTo(9.22)
        }

        discountLabel.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(7)
            make.trailing.equalToSuperview().offset(-8)
            make.height.equalTo(18)
        }

        likeButton.snp.makeConstraints { make in
            make.bottom.equalToSuperview().offset(-10)
            make.trailing.equalTo(addToBasketButton.snp.leading).offset(-5)
            make.width.height.equalTo(28)
        }

        addToBasketButton.snp.makeConstraints { make in
            make.bottom.equalToSuperview().offset(-7)
            make.trailing.equalToSuperview().offset(-4)
            make.width.height.equalTo(35)
        }


    }


}
