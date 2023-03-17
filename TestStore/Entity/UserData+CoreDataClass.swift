//
//  UserData+CoreDataClass.swift
//  
//
//  Created by Александр Борисов on 17.03.2023.
//
//

import Foundation
import CoreData

@objc(UserData)
public class UserData: NSManagedObject {
    convenience init() {
        self.init(
            entity: CoreDataManager.instance.entityForName(entityName: "UserData"),
            insertInto: CoreDataManager.instance.context)
    }
}
