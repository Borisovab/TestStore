//
//  ChatViewModel.swift
//  TestStore
//
//  Created by Александр Борисов on 27.03.2023.
//

import Foundation

class ChatViewModel {

    let picName: String

    init(name: ChatModel) {
        self.picName = name.pic
    }
}
