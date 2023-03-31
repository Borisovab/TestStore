//
//  TabBarBilder.swift
//  TestStore
//
//  Created by Александр Борисов on 26.03.2023.
//

import UIKit

protocol CreatViewControllerByParentVCProtocol {
    func creatVCByParent(parentVC: UIViewController)
}

class TabBarBilder: CreatViewControllerByParentVCProtocol {
    let tabBar = TabBarController()

    func creatVCByParent(parentVC: UIViewController) {

        tabBar.viewModel = TabBarViewModel()
        tabBar.modalPresentationStyle = .fullScreen
        parentVC.present(tabBar, animated: true)
    }
}
