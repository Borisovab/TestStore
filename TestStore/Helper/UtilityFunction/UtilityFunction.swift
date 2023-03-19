//
//  UtilityFunction.swift
//  TestStore
//
//  Created by Александр Борисов on 19.03.2023.
//

import UIKit

class UtilityFunction: NSObject {
    func simpleAlert(vc: UIViewController, title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ok", style: .default)
        alert.addAction(okAction)
        vc.present(alert, animated: true)
    }
}
