//
//  Coordinator.swift
//  TestStore
//
//  Created by Александр Борисов on 16.03.2023.
//

import UIKit

protocol Coordinator {
    var navigationController: UINavigationController {get set}

    func start()
}

