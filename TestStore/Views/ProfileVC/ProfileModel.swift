//
//  ProfileModel.swift
//  TestStore
//
//  Created by Александр Борисов on 27.03.2023.
//

import Foundation

struct ProfileModel {

    var picBarItem = "profile"
    var data = ProfData(pic: ProfData.PicName.tradePic,
                        name: ProfData.Names.TradeStore,
                        rightLabel: ProfData.RightLabel.errow)

    struct ProfData {
        var pic: PicName
        var name: Names
        var rightLabel: RightLabel?

        enum PicName: String {
            case tradePic = "trade"
            case restorePic = "restore"
            case helpPic = "help"
            case logoutPic = "logout"
        }

        enum Names: String {
            case TradeStore = "Trade store"
            case PaymentMethod = "TPayment method"
            case Balance = "Balance"
            case TradeHistory = "Trade history"
            case RestorePuchase = "Restore Puchase"
            case Help = "Help"
            case LogOut = "Log out"
        }

        enum RightLabel: String {
            case errow = "〉"
            case cost = "$ 1593"
        }
    }



}
