//
//  Page1TableViewCell.swift
//  TestStore
//
//  Created by Александр Борисов on 22.03.2023.
//

import UIKit
import SnapKit

class CategoryTableViewCell: UITableViewCell, AdapterTVCell {

    weak var coordinator: AppCoordinator?
    var categoryViewModel: CategoryViewModel?

    let categoryCollectionViewCellReuseIdentifier = "categoryCollectionViewCellReuseIdentifier"

    lazy var categoryCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let collectionView = UICollectionView(frame: .zero,
                                              collectionViewLayout: layout)
        return collectionView
    }()


    func configureCell() {
        categoryCollectionView.dataSource = self
        categoryCollectionView.delegate = self
        categoryCollectionView.register(CategoryCollectionViewCell.self,
                                 forCellWithReuseIdentifier: categoryCollectionViewCellReuseIdentifier)

        categoryCollectionView.backgroundColor = .white
        setupConstraints()
        print("configure Table Cell done")


    }

    private func setupConstraints() {
        [categoryCollectionView].forEach{ contentView.addSubview($0)}

        categoryCollectionView.snp.makeConstraints { make in
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

extension CategoryTableViewCell: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {

        let picArray = creatCategory(viewModel: CategoryViewModel())
        return picArray.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: categoryCollectionViewCellReuseIdentifier, for: indexPath) as? CategoryCollectionViewCell
        else { return UICollectionViewCell() }


        let picArray = creatCategory(viewModel: CategoryViewModel())
        let name = picArray[indexPath.item]

        cell.configureCollctionCell(image: UIImage(named: name), name: name)
        return cell
    }
}

extension CategoryTableViewCell: UICollectionViewDelegate {

}

extension CategoryTableViewCell: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {

        let height = collectionView.bounds.height
        let whiteSpaces: CGFloat = 0
        let cellWidth = height / 1 - whiteSpaces

        return CGSize(width: cellWidth, height: cellWidth)
    }
}
