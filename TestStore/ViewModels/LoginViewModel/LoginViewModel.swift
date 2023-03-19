//
//  LoginViewModel.swift
//  TestStore
//
//  Created by Александр Борисов on 17.03.2023.
//

import Foundation
import CoreData

class LoginViewModel {
    var isLoggedIn = false
    var user: UserData?

    func userPressedLogInButton(login: String, password: String) {

        let fetchResult = NSFetchRequest<NSFetchRequestResult>(entityName: "UserData")

        do {
            let results = try CoreDataManager.instance.context.fetch(fetchResult)
            for result in results as! [UserData] {

                let log = result.firstName
                let pass = result.email

                if login != log || password != pass {
                    isLoggedIn = false
                } else {
                    isLoggedIn = true
                    break
                }
            }
        } catch let error as NSError {
            print(error.localizedDescription)
        }

    }

}
