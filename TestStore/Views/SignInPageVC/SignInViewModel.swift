//
//  SignInViewModel.swift
//  TestStore
//
//  Created by Александр Борисов on 17.03.2023.
//

import UIKit
import CoreData


class SignInViewModel {
    var user: UserData?
    var flag = false
//    var isLoggedIn = false

    func saveUserData(vc: UIViewController, addFirstName: String, addLastName: String, addEmail: String) -> Bool {
        if addFirstName.isEmpty || addLastName.isEmpty || addEmail.isEmpty {
            UtilityFunction().simpleAlert(vc: vc, title: "Ошибка", message: "Пожалуйста, заполните все поля для регистрации личного кабинета")
            flag = false
        } else {
            if !addEmail.isValidEmail(email: addEmail) {
                UtilityFunction().simpleAlert(vc: vc, title: "Ошибка", message: "Пожалуйста, укажите верный email.")
                flag = false
            } else {
                // создаем объект
                var userData = user

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

                            if addEmail == email {
                                flag = false
                                break
                            } else {
                                flag = true
                            }
                        }

                        if flag == false {
                            UtilityFunction().simpleAlert(vc: vc, title: "Ошибка", message: "Указанный email уже зарегистрирован ранее.")
                        } else {

                            userData.firstName = addFirstName
                            userData.lastName = addLastName
                            userData.email = addEmail
                            CoreDataManager.instance.saveContext()
                        }

                    } catch let error as NSError {
                        print(error.localizedDescription)
                    }
                }
                flag = true
            }
        }
        return flag
    }
}
