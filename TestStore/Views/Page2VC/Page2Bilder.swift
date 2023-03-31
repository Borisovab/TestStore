//
//  Page2Bilder.swift
//  TestStore
//
//  Created by Александр Борисов on 31.03.2023.
//

import UIKit

class Page2Bilder {

    func creatNavControllerByParentVC(parent: UIViewController, data: GoodsModel, selector: Selector) {
        let vc = Page2ViewController()
        vc.viewModel?.products = Page1ViewController().flashDataArray
        let leftButton = UIBarButtonItem(image: UIImage(named: "LeftVector"), style: .done, target: nil, action: selector)
        leftButton.tintColor = .black
        vc.navigationItem.leftBarButtonItem = leftButton

        parent.navigationController?.pushViewController(vc, animated: true)
    }



}
