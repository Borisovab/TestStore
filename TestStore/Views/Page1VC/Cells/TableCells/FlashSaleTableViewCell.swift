//
//  FlashSaleTableViewCell.swift
//  TestStore
//
//  Created by Александр Борисов on 22.03.2023.
//

import UIKit

class FlashSaleTableViewCell: UITableViewCell {

    var flashDataArray = [GoodsModel]()

    private let flashSaleCollectionViewCellReuseIdentifier = "flashSaleCollectionViewCellReuseIdentifier"

    private lazy var flashSaleCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.minimumInteritemSpacing = 9
        layout.scrollDirection = .horizontal
        let collectionView = UICollectionView(frame: .zero,
                                              collectionViewLayout: layout)
        return collectionView
    }()

    func configureFlashSaleTVCell(viewModel: [GoodsModel]) {
        self.flashDataArray = viewModel

        flashSaleCollectionView.dataSource = self
        flashSaleCollectionView.delegate = self
        flashSaleCollectionView.register(FlashSaleCollectionViewCell.self,
                                         forCellWithReuseIdentifier: flashSaleCollectionViewCellReuseIdentifier)
        setupConstraints()
        flashSaleCollectionView.reloadData()
    }

    private func setupConstraints() {
        [flashSaleCollectionView].forEach{ contentView.addSubview($0)}

        flashSaleCollectionView.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.leading.trailing.equalToSuperview()
            make.bottom.equalToSuperview()
        }
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

extension FlashSaleTableViewCell: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {

        return flashDataArray.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: flashSaleCollectionViewCellReuseIdentifier, for: indexPath) as? FlashSaleCollectionViewCell
        else { return UICollectionViewCell() }

        let post = flashDataArray[indexPath.item]
        let postImage = flashDataArray[indexPath.item].backImage
        let url = URL(string: postImage)

        cell.picImage.showImage(with: url)

        cell.configureFlashSaleCollectionViewCell(category: post.category,
                                                  name: post.name,
                                                  prise: String(post.price),
                                                  discount: String(post.discount ?? 0))

        return cell
    }
}

extension FlashSaleTableViewCell: UICollectionViewDelegate {
}

extension FlashSaleTableViewCell: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {

        let cellWidth = (117 + 49 + 8)
        let cellHeight = (7 + 18 + 196)

        return CGSize(width: cellWidth, height: cellHeight)
    }
}

