//
//  ProfileViewController.swift
//  TestStore
//
//  Created by Александр Борисов on 16.03.2023.
//

import UIKit

class ProfileViewController: UIViewController, AdapterVCInsideTabBar {

    weak var coordinator: AppCoordinator?
    var viewModel: ProfileViewModel?

    let profileTableViewCellReuseIdentifier = "profileTableViewCellReuseIdentifier"

    var avatar: UIImageView = {
        let image = UIImageView()
        image.backgroundColor = .lightGray
        image.image = UIImage(named: "avatar")
        return image
    }()

//    var changePhotoLabel: UILabel = {
//        let label = UILabel()
//        label.text = "Change photo"
//        label.textAlignment = .center
//        label.textColor = #colorLiteral(red: 0.5764705539, green: 0.5764707327, blue: 0.5807756782, alpha: 1)
//        label.font = UIFont.systemFont(ofSize: 11, weight: .medium)
//        return label
//    }()


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
        setNavBar()
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

        switch indexPath.section {
        case 0:
            cell.configureCell(image: UIImage(named: "trade")!, name: "Trade store", rightL: "〉")
            return cell
        case 1:
            cell.configureCell(image: UIImage(named: "trade")!, name: "Payment method", rightL: "〉")
            return cell
        case 2:
            cell.configureCell(image: UIImage(named: "trade")!, name: "Balance", rightL: "$ 1593")
            return cell
        case 3:
            cell.configureCell(image: UIImage(named: "trade")!, name: "Trade history", rightL: "〉")
            return cell
        case 4:
            cell.configureCell(image: UIImage(named: "restore")!, name: "Restore Puchase", rightL: "〉")
            return cell
        case 5:
            cell.configureCell(image: UIImage(named: "help")!, name: "Help", rightL: nil)
            return cell
        case 6:
            cell.configureCell(image: UIImage(named: "logout")!, name: "Log out", rightL: nil)
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
            print("tap Logout")
            guard let coordinator = coordinator
            else {
                print("error Logout")
                return

            }
//            coordinator.logoutToSignInVC()
        }
    }
}
