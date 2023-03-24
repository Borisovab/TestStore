//
//  OtherTableViewCell.swift
//  TestStore
//
//  Created by Александр Борисов on 22.03.2023.
//

import UIKit

class LatestTableViewCell: UITableViewCell {

    let gateway = LatestGateway(network: NetworkController())
    var latestModel = [LatestModel]()

    let latestCollectionViewCellReuseIdentifier = "latestCollectionViewCellReuseIdentifier"

    lazy var latestCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.minimumInteritemSpacing = 12
        layout.scrollDirection = .horizontal
        let collectionView = UICollectionView(frame: .zero,
                                              collectionViewLayout: layout)
        return collectionView
    }()


    func configureLatestCVCell() {
        latestCollectionView.dataSource = self
        latestCollectionView.delegate = self
        latestCollectionView.register(LatestCollectionViewCell.self,
                                 forCellWithReuseIdentifier: latestCollectionViewCellReuseIdentifier)

        latestCollectionView.backgroundColor = .white
        setupConstraints()

        gateway.loadPosts { [weak self] post in
            guard let self = self
            else {
                print("error")
                return
            }

            self.latestModel = post
            self.latestCollectionView.reloadData()
            print("post =====>  \(post)")
        }
        print("configure LatestTableViewCell done")
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

        return latestModel.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: latestCollectionViewCellReuseIdentifier, for: indexPath) as? LatestCollectionViewCell
        else { return UICollectionViewCell() }

        let post = latestModel[indexPath.item]
        let postImage = latestModel[indexPath.item].backImage
        let url = URL(string: postImage)

        cell.picImage.showImage(with: url)

        cell.configureLatestCollectionCell(category: post.category,
                                           name: post.goodsName,
                                           cost: String(post.price))
        return cell
    }
}

extension LatestTableViewCell: UICollectionViewDelegate {

}

extension LatestTableViewCell: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {

//        let height = collectionView.bounds.height
//        let whiteSpaces: CGFloat = 1
//        let cellWidth = height / 1 - whiteSpaces

        let cellWidth = (7.46 + 56.59 + 49.85)
        let cellHeight = (109.31 + 9.14 + 30.54)

        return CGSize(width: cellWidth, height: cellHeight)
    }
}
