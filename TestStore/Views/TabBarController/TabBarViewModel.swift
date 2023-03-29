//
//  TabBarViewModel.swift
//  TestStore
//
//  Created by Александр Борисов on 26.03.2023.
//

import UIKit

class TabBarViewModel {
    func creatVCArray() -> [UINavigationController] {
        let navController1 = Page1Bilder().creatVC()
        let navController2 = LikeBilder().creatVC()
        let navController3 = BasketBilder().creatVC()
        let navController4 = ChatBilder().creatVC()
        let navController5 = ProfileBilder().creatVC()

        let array = [
            navController1,
            navController2,
            navController3,
            navController4,
            navController5
        ]

        return array
    }
}
