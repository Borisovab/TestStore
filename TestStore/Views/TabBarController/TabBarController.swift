//
//  TabBarController.swift
//  TestStore
//
//  Created by Александр Борисов on 16.03.2023.
//

import UIKit

class TabBarController: UITabBarController, AdapterTabBarControllers {

    weak var coordinator: AppCoordinator?

    override func viewDidLoad() {
        super.viewDidLoad()
        setupTabBar()
        setTabBarAppearence()
    }

    private func setupTabBar() {
        viewControllers = [
            genegateVC(viewController: HomeViewController(), title: "", image: UIImage(systemName: "house")),
            genegateVC(viewController: LikeViewController(), title: "", image: UIImage(systemName: "heart")),
            genegateVC(viewController: BasketViewController(), title: "", image: UIImage(systemName: "cart")),
            genegateVC(viewController: ChatViewController(), title: "", image: UIImage(systemName: "bubble.left")),
            genegateVC(viewController: ProfileViewController(), title: "Profile", image: UIImage(systemName: "person"))
        ]
    }

    private func genegateVC(viewController: UIViewController, title: String, image: UIImage?) -> UIViewController {
        viewController.tabBarItem.title = title
        viewController.tabBarItem.image = image
        return viewController
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
