//
//  HomeViewController.swift
//  TestStore
//
//  Created by Александр Борисов on 16.03.2023.
//

import UIKit

class Page1ViewController: UIViewController, AdapterVCInsideTabBar {

    weak var coordinator: AppCoordinator?

    let categoryTableViewCellReuseIdentifier = "categoryTableViewCellReuseIdentifier"
    let latestTableViewCellReuseIdentifier = "latestTableViewCellReuseIdentifier"
    let flashSaleTableViewCellReuseIdentifier = "flashSaleTableViewCellReuseIdentifier"
    let brandsTableViewCellReuseIdentifier = "brandsTableViewCellReuseIdentifier"

    lazy var page1SearchBar: UISearchBar = {
        let searchBar = UISearchBar()
        searchBar.searchBarStyle = UISearchBar.Style.default
        searchBar.placeholder = "What are you looking for?"
        searchBar.sizeToFit()
        searchBar.isTranslucent = true
        searchBar.backgroundImage = UIImage()
        return searchBar
    }()

    lazy var page1TableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .plain)
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(CategoryTableViewCell.self, forCellReuseIdentifier: categoryTableViewCellReuseIdentifier)
        tableView.register(LatestTableViewCell.self, forCellReuseIdentifier: latestTableViewCellReuseIdentifier)
        tableView.register(FlashSaleTableViewCell.self, forCellReuseIdentifier: flashSaleTableViewCellReuseIdentifier)
        tableView.register(BrandsTableViewCell.self, forCellReuseIdentifier: brandsTableViewCellReuseIdentifier)
        return tableView
    }()



    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0.9860665202, green: 0.9761391282, blue: 1, alpha: 1)
        setNavBar()
        setupConstraints()

    }
}


extension Page1ViewController: UITableViewDataSource {

    func numberOfSections(in tableView: UITableView) -> Int {
        return 4
    }

    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0: return "Test"
        case 1: return "Latest"
        case 2: return "Flash Sale"
        case 3: return "Brands"
        default: return ""
        }
    }


    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
//        let category = categoryViewModel?.model?.categoryArray
//        guard let category = category else { return 1 }
//
//        switch section {
//        case 0: return category.count
//        case 1: return 1
//        case 2: return 1
//        case 3: return 1
//        default: return 1
//        }
    }


    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        switch indexPath.section {
        case 0:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: categoryTableViewCellReuseIdentifier, for: indexPath) as? CategoryTableViewCell
            else { return UITableViewCell() }

            cell.configureCell()

            return cell

        case 1:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: latestTableViewCellReuseIdentifier, for: indexPath) as? LatestTableViewCell
            else { return UITableViewCell() }

            return cell

        case 2:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: flashSaleTableViewCellReuseIdentifier, for: indexPath) as? CategoryTableViewCell
            else { return UITableViewCell() }

            return cell

        case 3:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: brandsTableViewCellReuseIdentifier, for: indexPath) as? CategoryTableViewCell
            else { return UITableViewCell() }

            return cell

        default: return UITableViewCell()
        }

    }


}

extension Page1ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.section {
        case 0: return 70
        case 1,3: return 200
        case 2: return 350
        default: return 40
        }
    }
}
