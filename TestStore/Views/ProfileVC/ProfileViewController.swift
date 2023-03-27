//
//  ProfileViewController.swift
//  TestStore
//
//  Created by Александр Борисов on 16.03.2023.
//

import UIKit

class ProfileViewController: UIViewController {

    var coordinator: ProfileCoordinator?
    var viewModel: ProfileViewModel?

    let profileTableViewCellReuseIdentifier = "profileTableViewCellReuseIdentifier"

    var avatar: UIImageView = {
        let image = UIImageView()
        image.backgroundColor = .lightGray
        image.image = UIImage(named: "avatar")
        return image
    }()


    var changePhotoButton: UIButton = {
        let button = UIButton()
        button.setTitle("Change photo", for: .normal)
        button.setTitleColor(UIColor.lightGray, for: .normal)
        button.backgroundColor = .white
        return button
    }()

    var nameLabel: UILabel = {
        let label = UILabel()
        label.text = "Satria Adhi Pradana"
        label.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        label.textAlignment = .center
        return label
    }()

    var uploadItemButton: UIButton = {
        let button = UIButton()
        button.setTitle("     Upload Item", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.setImage(UIImage(named: "uploadItem"), for: .normal)
        button.backgroundColor = #colorLiteral(red: 0.3149016201, green: 0.3299151659, blue: 0.8169010282, alpha: 1)
        button.layer.cornerRadius = 20
        return button
    }()


    lazy var profileTableView: UITableView = {
        let tableVew = UITableView(frame: .zero, style: .plain)
        tableVew.dataSource = self
        tableVew.delegate = self
        tableVew.register(ProfileTableViewCell.self, forCellReuseIdentifier: profileTableViewCellReuseIdentifier)
        return tableVew
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupConstraints()

    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        avatar.layer.cornerRadius = avatar.frame.size.width / 2
    }

}


extension ProfileViewController: UITableViewDataSource {

    func numberOfSections(in tableView: UITableView) -> Int {
        return 7
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: profileTableViewCellReuseIdentifier, for: indexPath) as? ProfileTableViewCell
        else { return UITableViewCell() }

        guard let viewModel = viewModel
        else {
            print("error viewModel = nil")
            return UITableViewCell()
        }
        let model1 = viewModel.dataForCase1
        let model2 = viewModel.dataForCase2
        let model3 = viewModel.dataForCase3
        let model4 = viewModel.dataForCase4
        let model5 = viewModel.dataForCase5
        let model6 = viewModel.dataForCase6
        let model7 = viewModel.dataForCase7

        switch indexPath.section {
        case 0:
            cell.configureCell(image: UIImage(named: model1.pic.rawValue)!,
                               name: model1.name.rawValue,
                               rightL: model1.rightLabel?.rawValue)
            return cell

        case 1:
            cell.configureCell(image: UIImage(named: model2.pic.rawValue)!,
                               name: model2.name.rawValue,
                               rightL: model2.rightLabel?.rawValue)
            return cell

        case 2:
            cell.configureCell(image: UIImage(named: model3.pic.rawValue)!,
                               name: model3.name.rawValue,
                               rightL: model3.rightLabel?.rawValue)
            return cell

        case 3:
            cell.configureCell(image: UIImage(named: model4.pic.rawValue)!,
                               name: model4.name.rawValue,
                               rightL: model4.rightLabel?.rawValue)
            return cell

        case 4:
            cell.configureCell(image: UIImage(named: model5.pic.rawValue)!,
                               name: model5.name.rawValue,
                               rightL: model5.rightLabel?.rawValue)
            return cell

        case 5:
            cell.configureCell(image: UIImage(named: model6.pic.rawValue)!,
                               name: model6.name.rawValue,
                               rightL: model6.rightLabel?.rawValue)
            return cell

        case 6:
            cell.configureCell(image: UIImage(named: model7.pic.rawValue)!,
                               name: model7.name.rawValue,
                               rightL: model7.rightLabel?.rawValue)
            return cell

        default: return UITableViewCell()

        }
    }


}

extension ProfileViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.section == 6 {

            
            coordinator?.showSignInVC()

            }
        }

}
