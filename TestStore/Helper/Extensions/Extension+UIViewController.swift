//
//  Extension+UIViewController.swift
//  TestStore
//
//  Created by Александр Борисов on 27.03.2023.
//

import UIKit

extension UIViewController {

    func creatCustomView(location: String, avatarImage: String) -> UIView {
        let view = UIView()
        view.frame = CGRect(x: 0, y: 0, width: 350, height: 60)

        let myAttribute = [NSAttributedString.Key.font: UIFont(name: UIFont.fontNames(forFamilyName: "Montserrat")[0], size: 26)]
        let myString = NSMutableAttributedString(string: "Trade by", attributes: myAttribute as [NSAttributedString.Key : Any])
        let mySecondAttribute = [NSAttributedString.Key.font: UIFont(name: UIFont.fontNames(forFamilyName: "Montserrat")[0], size: 26)]
        let attString = NSAttributedString(string: " data", attributes: mySecondAttribute as [NSAttributedString.Key : Any])
        myString.append(attString)

        let myRange = NSRange(location: 8, length: 5)
        myString.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.blue, range: myRange)

        let titleLable = UILabel()
        titleLable.text = title
        titleLable.attributedText = myString
        titleLable.frame = CGRect(x: 50, y: 0, width: 200, height: 40)
        view.addSubview(titleLable)

        let imageAvatar = UIImageView()
        imageAvatar.image = UIImage(named: avatarImage)
        imageAvatar.layer.cornerRadius = imageAvatar.frame.size.width / 2
        imageAvatar.frame = CGRect(x: 280, y: 0, width: 40, height: 40)
        view.addSubview(imageAvatar)

        let locationLabel = UILabel()
        locationLabel.text = location
        locationLabel.frame = CGRect(x: 270, y: 40, width: 80, height: 20)
        locationLabel.font = UIFont(name: UIFont.fontNames(forFamilyName: "Montserrat")[0], size: 12)
        locationLabel.textColor = #colorLiteral(red: 0.3568627451, green: 0.3568627451, blue: 0.3568627451, alpha: 1)
        view.addSubview(locationLabel)

        return view
    }

    func creatCustomButton(imageName: String) -> UIBarButtonItem {

        let button = UIButton(type: .system)
        button.setImage(
            UIImage(named: imageName)?.withRenderingMode(.alwaysTemplate),
            for: .normal)
        button.tintColor = .black

        button.imageView?.contentMode = .scaleAspectFit
        button.contentVerticalAlignment = .fill
        button.contentHorizontalAlignment = .fill

        let menuBarItem = UIBarButtonItem(customView: button)

        return menuBarItem
    }
}
