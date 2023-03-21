//
//  AdapterVCInsideTabBar.swift
//  TestStore
//
//  Created by Александр Борисов on 20.03.2023.
//

import UIKit

protocol AdapterVCInsideTabBar {
    static func genegateVC(viewController: UIViewController, image: UIImage?) -> Self
}

extension AdapterVCInsideTabBar where Self: UIViewController {
    static func genegateVC(viewController: UIViewController, image: UIImage?) -> Self {
        viewController.tabBarItem.image = image
        return viewController as! Self
    }
}
