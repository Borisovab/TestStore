//
//  ProfileVC+setNavBar.swift
//  TestStore
//
//  Created by Александр Борисов on 20.03.2023.
//

import UIKit

extension ProfileViewController {
    func setNavBar() {
        let navBar = UINavigationBar(frame: CGRect(x: 0, y: 50, width: view.frame.size.width, height: 164))
        view.addSubview(navBar)
        navBar.barTintColor = .white
        let navItem = UINavigationItem(title: "Profile")
        let backButton = UIBarButtonItem(image: UIImage(systemName: "arrow.backward"), style: .plain, target: nil, action: nil)
        navItem.leftBarButtonItem = backButton
        navBar.setItems([navItem], animated: false)
    }
}
