//
//  Page2ViewController.swift
//  TestStore
//
//  Created by Александр Борисов on 31.03.2023.
//

import UIKit

class Page2ViewController: UIViewController {

    var viewModel: Page2ViewModel?

    private let detailCollectionViewCellReuseIdentifier = "detailCollectionViewCellReuseIdentifier"

    lazy var selectedProductCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
//        layout.minimumInteritemSpacing = 2
        layout.scrollDirection = .horizontal
        let collectionView = UICollectionView(frame: .zero,
                                              collectionViewLayout: layout)

        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.register(DetailCollectionViewCell.self,
                                forCellWithReuseIdentifier: detailCollectionViewCellReuseIdentifier)
        return collectionView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        configureNavBar()
        setupConstraints()
    }

    private func configureNavBar() {
        self.navigationController?.navigationBar.standardAppearance.shadowColor = nil
        self.navigationController?.navigationBar.tintColor = .black
        self.navigationController?.navigationBar.topItem?.title = ""
    }

    func setLikeAndShareButtonsView() {


    }


}

extension Page2ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {

        return 3
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: detailCollectionViewCellReuseIdentifier, for: indexPath) as? DetailCollectionViewCell
        else { return UICollectionViewCell() }

        cell.configureLatestCollectionCell(image: UIImage(named: "Brand2"))
        return cell
    }
}


extension Page2ViewController: UICollectionViewDelegate {

}


extension Page2ViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {

        let height = collectionView.bounds.height
        let whiteSpaces: CGFloat = 0
        let cellWidth = height / 1 - whiteSpaces

        return CGSize(width: cellWidth, height: cellWidth)
    }
}
