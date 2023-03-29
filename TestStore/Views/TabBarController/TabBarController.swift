//
//  TabBarController.swift
//  TestStore
//
//  Created by Александр Борисов on 16.03.2023.
//

import UIKit

class TabBarController: UITabBarController {

    var viewModel: TabBarViewModel?

    override func viewDidLoad() {
        super.viewDidLoad()

        setTabBarAppearence()
        
        DispatchQueue.main.async {
            self.setupTabBar()
        }
    }

    private func setupTabBar() {
        guard let viewModel = viewModel else {
            print("error setupTabBar")
            return
        }
        viewControllers = viewModel.creatVCArray()
    }

    private func setTabBarAppearence() {
        let positionOnX: CGFloat = 10
        let positionOnY: CGFloat = 14
        let width = tabBar.bounds.width - positionOnX * 2
        let height = tabBar.bounds.height + positionOnY * 2

        let roudLayer = CAShapeLayer()

        let bezierPath = UIBezierPath(
            roundedRect: CGRect(
                x: positionOnX,
                y: tabBar.bounds.minY - positionOnY,
                width: width,
                height: height),
            cornerRadius: height / 2)

        roudLayer.path = bezierPath.cgPath

        tabBar.layer.insertSublayer(roudLayer, at: 0)
        tabBar.itemWidth = width / 5
        tabBar.itemPositioning = .centered

        roudLayer.fillColor = UIColor.mainWhite.cgColor
        tabBar.tintColor = .tabBarItemAccent
        tabBar.unselectedItemTintColor = .tabBarItemLight
    }

}
