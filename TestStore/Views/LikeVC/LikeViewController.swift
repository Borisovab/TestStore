//
//  LikeViewController.swift
//  TestStore
//
//  Created by Александр Борисов on 16.03.2023.
//

import UIKit

class LikeViewController: UIViewController, AdapterVCInsideTabBar {

    weak var coordinator: AppCoordinator?

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)


        creatSomeFunc(name: "asc", image: UIImage(named: "ascas")) {
            self.anotherFunc()
        }

        someFunc(name: "Ivan") { name in
            self.printName(name: name)
        }

        

    }


    func creatSomeFunc(name: String, image: UIImage?, completion: @escaping () -> Void) {
        completion()
    }

    func anotherFunc() {
        print("asdfdsv")
    }


    func someFunc(name: String, completion: @escaping (String) -> Void) {
        completion(name)
    }

    func printName(name: String) {
        print(name)
    }


}
