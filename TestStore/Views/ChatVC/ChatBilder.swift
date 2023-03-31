//
//  ChatBilder.swift
//  TestStore
//
//  Created by Александр Борисов on 27.03.2023.
//


import UIKit

class ChatBilder: CreatNavigationControllerProtocol {
    let chatModel = ChatModel()

    func creatVC() -> UINavigationController {
        let vc = ChatViewController()
        vc.viewModel = ChatViewModel(name: chatModel)

        vc.tabBarItem.image = UIImage(named: chatModel.pic)

        let navController = UINavigationController(rootViewController: vc)
        return navController
    }


}
