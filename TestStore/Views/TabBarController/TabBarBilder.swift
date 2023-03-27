//
//  TabBarBilder.swift
//  TestStore
//
//  Created by Александр Борисов on 26.03.2023.
//

import UIKit

protocol TabBarControllerProtocol {
    func creatTBC(parentVC: UIViewController)
}

class TabBarBilder: TabBarControllerProtocol {
    let tabBar = TabBarController()

    func creatTBC(parentVC: UIViewController) {
        tabBar.viewModel = TabBarViewModel()
        tabBar.coordinator = TabBarCoordinator()

        tabBar.modalPresentationStyle = .fullScreen
        parentVC.present(tabBar, animated: true)
    }


}
