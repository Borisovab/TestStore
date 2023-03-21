//
//  ProfileVC+Constraints.swift
//  TestStore
//
//  Created by Александр Борисов on 20.03.2023.
//

import UIKit
import SnapKit

extension ProfileViewController {
    func setupConstraints() {
        [avatar, changePhotoButton, nameLabel, uploadItemButton, profileTableView].forEach{ view.addSubview($0) }

        avatar.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(110)
            make.centerX.equalToSuperview()
            make.width.height.equalTo(90)
        }

        changePhotoButton.snp.makeConstraints { make in
            make.top.equalTo(avatar.snp.bottom).offset(3)
            make.centerX.equalToSuperview()
            make.width.equalTo(150)
            make.height.equalTo(30)
        }

        nameLabel.snp.makeConstraints { make in
            make.top.equalTo(changePhotoButton.snp.bottom).offset(10)
            make.centerX.equalToSuperview()
            make.leading.trailing.equalToSuperview().inset(25)
            make.height.equalTo(30)
        }

        uploadItemButton.snp.makeConstraints { make in
            make.top.equalTo(nameLabel.snp.bottom).offset(25)
            make.leading.trailing.equalToSuperview().inset(30)
            make.height.equalTo(60)
        }

        profileTableView.snp.makeConstraints { make in
            make.top.equalTo(uploadItemButton.snp.bottom).offset(20)
            make.leading.trailing.equalToSuperview().inset(25)
            make.bottom.equalToSuperview().offset(-60)
        }
    }
}
