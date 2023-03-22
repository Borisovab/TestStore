//
//  Page1VC+setNavBar.swift
//  TestStore
//
//  Created by Александр Борисов on 22.03.2023.
//

import UIKit

extension Page1ViewController {
    func setNavBar() {
        let navBar = UINavigationBar(frame: CGRect(x: 0, y: 50, width: view.frame.size.width, height: 264))
        view.addSubview(navBar)
        let navItem = UINavigationItem(title: "Trade by data")
        let leftButton = UIBarButtonItem(image: UIImage(named: "back"), style: .plain, target: nil, action: #selector(someAction))
        navItem.leftBarButtonItem = leftButton
        navBar.setItems([navItem], animated: false)
    }


    @objc func someAction() {
        print("Action Hi!")
    }
}
