//
//  OtherTableViewCell.swift
//  TestStore
//
//  Created by Александр Борисов on 22.03.2023.
//

import UIKit

class LatestTableViewCell: UITableViewCell {

    let latestCollectionViewCellReuseIdentifier = "latestCollectionViewCellReuseIdentifier"

    lazy var latestCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let collectionView = UICollectionView(frame: .zero,
                                              collectionViewLayout: layout)
        return collectionView
    }()


    func configureCell() {
        latestCollectionView.dataSource = self
        latestCollectionView.delegate = self
        latestCollectionView.register(LatestCollectionViewCell.self,
                                 forCellWithReuseIdentifier: latestCollectionViewCellReuseIdentifier)

        latestCollectionView.backgroundColor = .white
        setupConstraints()
        print("configure Table Cell done")


    }

    private func setupConstraints() {
        [latestCollectionView].forEach{ contentView.addSubview($0)}

        latestCollectionView.snp.makeConstraints { make in
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


extension LatestTableViewCell: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {

        return 10
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: latestCollectionViewCellReuseIdentifier, for: indexPath) as? LatestCollectionViewCell
        else { return UICollectionViewCell() }



//        cell.configureLatestCollectionCell(image: <#T##UIImage?#>,
//                                           category: <#T##String#>,
//                                           name: <#T##String#>,
//                                           cost: <#T##String#>)
        return cell
    }
}

extension LatestTableViewCell: UICollectionViewDelegate {

}

extension LatestTableViewCell: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {

        let height = collectionView.bounds.height
        let whiteSpaces: CGFloat = 0
        let cellWidth = height / 1 - whiteSpaces

        return CGSize(width: cellWidth, height: cellWidth)
    }
}
