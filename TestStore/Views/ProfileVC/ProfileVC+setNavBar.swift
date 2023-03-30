//
//  ProfileVC+setNavBar.swift
//  TestStore
//
//  Created by Александр Борисов on 20.03.2023.
//

import UIKit

extension ProfileViewController {
    func setNavBar() {
        let navBar = UINavigationBar(frame: CGRect(x: 0, y: 50, width: view.frame.size.width, height: 50))
        navBar.standardAppearance.shadowColor = nil
        navBar.standardAppearance.backgroundColor = .white

        view.addSubview(navBar)
        navBar.barTintColor = .white
        let navItem = UINavigationItem(title: "Profile")
        let backButton = UIBarButtonItem(image: UIImage(systemName: "arrow.backward"), style: .plain, target: nil, action: nil)
        backButton.tintColor = .black
        navItem.leftBarButtonItem = backButton
        navBar.setItems([navItem], animated: false)
    }
}
//self.navigationController?.navigationBar.standardAppearance.shadowColor = nil
