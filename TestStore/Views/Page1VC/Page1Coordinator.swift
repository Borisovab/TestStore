//
//  Page1Coordinator.swift
//  TestStore
//
//  Created by Александр Борисов on 31.03.2023.
//

import UIKit

class Page1Coordinator {
    weak var currentVC: UIViewController?

    func showPage2VC(viewController: UIViewController, data: GoodsModel, selector: Selector) {
        Page2Bilder().creatNavControllerByParentVC(parent: viewController, data: data, selector: selector)
    }



}
