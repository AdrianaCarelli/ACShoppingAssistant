//
//  Product+CoreDataProperties.swift
//  ACShoppingAssistant
//
//  Created by Adriana Carelli on 29/12/15.
//  Copyright © 2015 Adriana Carelli. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension Product {

    @NSManaged var title: String?
    @NSManaged var store: String?
    @NSManaged var image: NSData?

}
