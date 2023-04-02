//
//  LikeAndShareButtons.swift
//  TestStore
//
//  Created by Александр Борисов on 02.04.2023.
//

import UIKit

@IBDesignable class LikeAndShareButtons: UIView {

    var likeButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "like"), for: .normal)
        return button
    }()

    var shareButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "sharePost"), for: .normal)
        return button
    }()

    var separator: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "separator")
        return image
    }()

    lazy var stackView: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.spacing = 10
        stack.alignment = .fill
        stack.distribution = .fillEqually

        [self.likeButton,
         self.shareButton].forEach{ stack.addArrangedSubview($0) }
        return stack
    }()


    override init(frame: CGRect) {
        super.init(frame: frame)
        setupConstraints()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupConstraints()
    }

    private func setupConstraints() {
        [stackView, separator].forEach{ self.addSubview($0) }

        stackView.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.leading.trailing.equalToSuperview()
            make.bottom.equalToSuperview()
        }

        separator.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.leading.trailing.equalToSuperview().inset(15)
        }


    }


}
