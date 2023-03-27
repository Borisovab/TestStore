//
//  HomeViewController.swift
//  TestStore
//
//  Created by Александр Борисов on 16.03.2023.
//

import UIKit

class Page1ViewController: UIViewController {

    var viewModel: Page1ViewModel?

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
        setupConstraints()

    }

}


extension Page1ViewController: UITableViewDataSource {

    func numberOfSections(in tableView: UITableView) -> Int {
        return 4
    }


    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }


    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        switch indexPath.section {
        case 0:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: categoryTableViewCellReuseIdentifier, for: indexPath) as? CategoryTableViewCell
            else { return UITableViewCell() }

            guard let viewModel = viewModel
            else {
                print("Error configureCategoryCVCell / viewModel = nil")
                return UITableViewCell()
            }

            cell.configureCategoryCVCell(viewModel: viewModel)

            return cell

        case 1:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: latestTableViewCellReuseIdentifier, for: indexPath) as? LatestTableViewCell
            else { return UITableViewCell() }

            cell.configureLatestCVCell()

            return cell

        case 2:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: flashSaleTableViewCellReuseIdentifier, for: indexPath) as? FlashSaleTableViewCell
            else { return UITableViewCell() }

            cell.configureFlashSaleTVCell()

            return cell

        case 3:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: brandsTableViewCellReuseIdentifier, for: indexPath) as? BrandsTableViewCell
            else { return UITableViewCell() }

            guard let viewModel = viewModel
            else {
                print("Error configureBrandsTVCell / viewModel = nil")
                return UITableViewCell()
            }

            cell.configureBrandsTVCell(viewModel: viewModel)

            return cell

        default: return UITableViewCell()
        }

    }


}

extension Page1ViewController: UITableViewDelegate {

    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {

        switch section {
        case 1, 2, 3:
            let frame = tableView.frame

            let button = UIButton(frame: CGRect(x: 300, y: 0, width: 100, height: 25))
            button.tag = section
            button.setTitle("View all", for: .normal)
            button.setTitleColor(UIColor.gray, for: .normal)

            let sectionName = UILabel(frame: CGRect(x: 5, y: 0, width: 150, height: 25))
            sectionName.tag = section

            if section == 1 {
                sectionName.text = "Latest"
            }

            if section == 2 {
                sectionName.text = "Flash Sale"
            }

            if section == 3 {
                sectionName.text = "Brands"
            }

            sectionName.textColor = .black
            sectionName.font = UIFont.systemFont(ofSize: 24, weight: .bold)

            let headerView = UIView(frame: CGRect(x: 0, y: 0, width: frame.width, height: frame.height))
            headerView.addSubview(button)
            headerView.addSubview(sectionName)
            return headerView

        default: return UIView()
        }
    }


    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.section {
        case 0: return 70
        case 1,3: return 150
        case 2: return 220
        default: return 40
        }


    }
}
