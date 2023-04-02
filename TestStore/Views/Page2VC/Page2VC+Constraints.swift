//
//  Page2VC+Constraints.swift
//  TestStore
//
//  Created by Александр Борисов on 02.04.2023.
//

import UIKit
import SnapKit

extension Page2ViewController {
    func setupConstraints() {
        [selectedProductCollectionView].forEach{ view.addSubview($0) }

        selectedProductCollectionView.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.leading.trailing.equalToSuperview().inset(2)
            make.height.equalTo(selectedProductCollectionView.snp.width)
        }

    }

}
