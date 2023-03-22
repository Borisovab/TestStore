//
//  Page1VC+Constraints.swift
//  TestStore
//
//  Created by Александр Борисов on 22.03.2023.
//

import Foundation
import SnapKit

extension Page1ViewController {
    func setupConstraints() {
        [page1SearchBar, page1TableView].forEach{ view.addSubview($0) }

        page1SearchBar.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(100)
            make.leading.trailing.equalToSuperview().inset(40)

        }

        page1TableView.snp.makeConstraints { make in
            make.top.equalTo(page1SearchBar.snp.bottom)
            make.leading.trailing.equalToSuperview().inset(5)
            make.bottom.equalToSuperview()
        }
    }
}
