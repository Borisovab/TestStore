//
//  LatestCollectionViewCell.swift
//  TestStore
//
//  Created by Александр Борисов on 23.03.2023.
//

import UIKit
import SnapKit

class LatestCollectionViewCell: UICollectionViewCell {

    var picImage: UIImageView = {
        let image = UIImageView()
        return image
    }()

    var categoryLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        label.backgroundColor = #colorLiteral(red: 0.7095205188, green: 0.7134285569, blue: 0.7268471122, alpha: 1)
        label.font = UIFont.systemFont(ofSize: 7, weight: .medium)
        label.font = UIFont(name: UIFont.fontNames(forFamilyName: "Montserrat")[0], size: 8)
//        label.layer.cornerRadius = 30
        return label
    }()

    var goodsNameLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .left
        label.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        label.font = UIFont(name: UIFont.fontNames(forFamilyName: "Montserrat")[0], size: 8)
        return label
    }()

    var costLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        label.font = UIFont(name: UIFont.fontNames(forFamilyName: "Montserrat")[0], size: 8)
        return label
    }()

    var addToBasketButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "plus"), for: .normal)
        return button
    }()

    func configureLatestCollectionCell(category: String, name: String, cost: String) {
        self.categoryLabel.text = category
        self.goodsNameLabel.text = name
        self.costLabel.text = cost

        setupConstraints()

        print("print from LatestCollectionViewCell")
    }


    private func setupConstraints() {
        [picImage, categoryLabel, goodsNameLabel, costLabel, addToBasketButton].forEach{ contentView.addSubview($0) }

        picImage.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.leading.trailing.equalToSuperview()
            make.bottom.equalToSuperview()
        }

        categoryLabel.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(91)
            make.leading.equalToSuperview().offset(7)
            make.trailing.equalToSuperview().offset(-72)
            make.height.equalTo(12)
        }

        goodsNameLabel.snp.makeConstraints { make in
            make.top.equalTo(categoryLabel.snp.bottom).offset(6.31)
            make.leading.equalToSuperview().offset(7.46)
            make.trailing.equalToSuperview().offset(-49.85)
            make.height.equalTo(9.14)
        }

        costLabel.snp.makeConstraints { make in
            make.top.equalTo(goodsNameLabel.snp.bottom).offset(17.03)
            make.leading.equalToSuperview().offset(7.37)
            make.trailing.equalTo(addToBasketButton.snp.leading).offset(-51.61)
            make.height.equalTo(6.45)

        }

        addToBasketButton.snp.makeConstraints { make in
            make.width.height.equalTo(20)
            make.trailing.equalToSuperview().offset(-5)
            make.bottom.equalToSuperview().offset(-5)
        }

    }
    
}
