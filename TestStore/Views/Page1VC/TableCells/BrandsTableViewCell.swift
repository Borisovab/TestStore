//
//  BrandsTableViewCell.swift
//  TestStore
//
//  Created by Александр Борисов on 22.03.2023.
//

import UIKit

class BrandsTableViewCell: UITableViewCell {

    var viewModel: BrandsViewModel?

    let brandsCollectionViewCellReuseIdentifier = "brandsCollectionViewCellReuseIdentifier"

    lazy var brandsCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.minimumInteritemSpacing = 12
        layout.scrollDirection = .horizontal
        let collectionView = UICollectionView(frame: .zero,
                                              collectionViewLayout: layout)
        return collectionView
    }()


    func configureBrandsTVCell(viewModel: BrandsViewModel) {
        self.viewModel = viewModel

        brandsCollectionView.dataSource = self
        brandsCollectionView.delegate = self
        brandsCollectionView.register(BrandsCollectionViewCell.self,
                                 forCellWithReuseIdentifier: brandsCollectionViewCellReuseIdentifier)

        brandsCollectionView.backgroundColor = .white
        setupConstraints()
        print("configure BrandsTableViewCell done")


    }


    private func setupConstraints() {
        [brandsCollectionView].forEach{ contentView.addSubview($0)}

        brandsCollectionView.snp.makeConstraints { make in
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

extension BrandsTableViewCell: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {

//        guard let picArray = brandsPicArray
//        else {
//            print("picArray = nil")
//            return 0
//        }

        return 1
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: brandsCollectionViewCellReuseIdentifier, for: indexPath) as? BrandsCollectionViewCell
        else { return UICollectionViewCell() }

//        guard let picArray = brandsPicArray
//        else {
//            return UICollectionViewCell()
//        }

//        let picName b(named: picName))

        return cell
    }
}

extension BrandsTableViewCell: UICollectionViewDelegate {

}

extension BrandsTableViewCell: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {

        let cellWidth = (114)
        let cellHeight = (149)

        return CGSize(width: cellWidth, height: cellHeight)
    }
}


