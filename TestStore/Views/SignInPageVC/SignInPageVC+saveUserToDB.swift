//
//  SignInPageVC+saveUserToDB.swift
//  TestStore
//
//  Created by Александр Борисов on 17.03.2023.
//

import UIKit
import CoreData

extension SignInPageViewController {
    func saveUserData() -> Bool {
        if firstNameTF.text!.isEmpty || lastNameTF.text!.isEmpty || emailTF.text!.isEmpty {
            errorAlert()
            return false
        }

        // создаем объект
        var userData = viewModel?.user

        if userData == nil {
            userData = UserData()
        }

        // сохраняем объект
        if let userData = userData {

            // достаем из БД данные
            let fetchResult = NSFetchRequest<NSFetchRequestResult>(entityName: "UserData")

            // проверка, если введенные данные уже имеются в БД, выдать ошибку, если нет, записать в БД
            do {
                let results = try CoreDataManager.instance.context.fetch(fetchResult)
                var flag = false
                for result in results as! [UserData] {
                    let email = result.email

                    if emailTF.text == email {
                        flag = false
                        break
                    } else {
                        flag = true
                    }
                }

                if flag == false {
                    errorNameOrEmailAlert()
                } else {
                    userData.firstName = firstNameTF.text
                    userData.lastName = lastNameTF.text
                    userData.email = emailTF.text
                    CoreDataManager.instance.saveContext()
                }

            } catch let error as NSError {
                print(error.localizedDescription)
            }
        }
        return true
    }
}
