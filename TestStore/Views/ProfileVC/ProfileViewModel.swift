//
//  ProfileViewModel.swift
//  TestStore
//
//  Created by Александр Борисов on 20.03.2023.
//

import Foundation

class ProfileViewModel {

    var picBarItem: String

    let dataForCase1 = ProfileModel.ProfData(pic: .tradePic,
                                             name: .TradeStore,
                                             rightLabel: .errow)

    let dataForCase2 = ProfileModel.ProfData(pic: .tradePic,
                                             name: .PaymentMethod,
                                             rightLabel: .errow)

    let dataForCase3 = ProfileModel.ProfData(pic: .tradePic,
                                             name: .Balance,
                                             rightLabel: .cost)

    let dataForCase4 = ProfileModel.ProfData(pic: .tradePic,
                                             name: .TradeHistory,
                                             rightLabel: .errow)

    let dataForCase5 = ProfileModel.ProfData(pic: .restorePic,
                                             name: .RestorePuchase,
                                             rightLabel: .errow)

    let dataForCase6 = ProfileModel.ProfData(pic: .helpPic,
                                             name: .Help,
                                             rightLabel: nil)

    let dataForCase7 = ProfileModel.ProfData(pic: .logoutPic,
                                             name: .LogOut,
                                             rightLabel: nil)


    init(model: ProfileModel) {
        self.picBarItem = model.picBarItem
    }
}
