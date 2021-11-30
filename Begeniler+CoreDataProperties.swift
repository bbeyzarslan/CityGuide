//
//  Begeniler+CoreDataProperties.swift
//  CityGuide
//
//  Created by Beyza Arslan on 21.09.2021.
//
//

import Foundation
import CoreData


extension Begeniler {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Begeniler> {
        return NSFetchRequest<Begeniler>(entityName: "Begeniler")
    }

    @NSManaged public var ozellikID: String?
    @NSManaged public var yerID: String?

}

extension Begeniler : Identifiable {

}
