//
//  Page2Bilder.swift
//  TestStore
//
//  Created by Александр Борисов on 31.03.2023.
//

import UIKit

class Page2Bilder {

    func creatNavControllerByParentVC(parent: UIViewController, data: GoodsModel) {
        let vc = Page2ViewController()
        vc.viewModel?.products = Page1ViewController().flashDataArray

        parent.navigationController?.pushViewController(vc, animated: true)
    }


}
