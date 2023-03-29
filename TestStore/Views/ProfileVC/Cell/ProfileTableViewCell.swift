//
//  ProfileTableViewCell.swift
//  TestStore
//
//  Created by Александр Борисов on 20.03.2023.
//

import UIKit
import SnapKit

class ProfileTableViewCell: UITableViewCell {

    private var imageForCell: UIImageView = {
        let image = UIImageView()
        return image
    }()

    private var nameLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .left
        return label
    }()

    private var rightLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .right
        return label
    }()

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    override func prepareForReuse() {
        super.prepareForReuse()
        self.imageForCell.image = nil
        self.nameLabel.text = nil
        self.rightLabel.text = nil
    }

    func configureCell(image: UIImage, name: String, rightL: String?) {
        self.imageForCell.image = image
        self.nameLabel.text = name
        self.rightLabel.text = rightL
        setupConstraints()
    }

    private func setupConstraints() {
        [imageForCell, nameLabel, rightLabel].forEach{ contentView.addSubview($0)}

        imageForCell.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.top.equalToSuperview().offset(10)
            make.leading.equalToSuperview().offset(10)
            make.bottom.equalToSuperview().offset(-10)

            make.width.equalTo(imageForCell.snp.height).multipliedBy(1 / 1)
        }

        nameLabel.snp.makeConstraints { make in
            make.centerY.equalTo(imageForCell.snp.centerY)
            make.leading.equalTo(imageForCell.snp.trailing).offset(15)
            make.height.equalTo(20)
            make.width.equalTo(120)
        }

        rightLabel.snp.makeConstraints { make in
            make.centerY.equalTo(imageForCell.snp.centerY)
            make.trailing.equalToSuperview().offset(-5)
            make.height.equalTo(20)
            make.leading.equalTo(nameLabel.snp.trailing)
        }
    }
}
