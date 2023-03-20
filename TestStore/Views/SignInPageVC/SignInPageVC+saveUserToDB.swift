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
        var flag = false
        if let firstName = firstNameTF.text, let lastName = lastNameTF.text, let email = emailTF.text {
            if firstName.isEmpty || lastName.isEmpty || email.isEmpty {
                UtilityFunction().simpleAlert(vc: self, title: "Ошибка", message: "Пожалуйста, заполните все поля для регистрации личного кабинета")
                flag = false
            } else {
                if !email.isValidEmail(email: email) {
                    UtilityFunction().simpleAlert(vc: self, title: "Ошибка", message: "Пожалуйста, укажите верный email.")
                    flag = false
                } else {
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
                                UtilityFunction().simpleAlert(vc: self, title: "Ошибка", message: "Указанный email уже зарегистрирован ранее.")
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
                    flag = true
                }
            }
        }

        return flag
    }

}
