//
//  Adapter.swift
//  TestStore
//
//  Created by Александр Борисов on 16.03.2023.
//

import UIKit

protocol AdapterViewController {
    static func creatVC(viewController: UIViewController, title: String) -> Self
}

extension AdapterViewController where Self: UIViewController {
    static func creatVC(viewController: UIViewController, title: String) -> Self {
        viewController.title = title
        return viewController as! Self
    }
}
