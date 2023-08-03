//
//  Item.swift
//  SwiftDataExample
//
//  Created by Ravikanth Thummala on 8/2/23.
//

import Foundation
import SwiftData

@Model
final class User {
    
    var id:UUID
    var firstName: String
    var lastName:  String
    var company:   Company
    
    init(firstName: String, lastName: String, company: Company) {
        self.id = UUID()
        self.firstName = firstName
        self.lastName = lastName
        self.company = company
    }
}


@Model
final class Company {
    var id:UUID
    var companyName: String
    var designation: String

    init(companyName: String, designation: String) {
        self.id = UUID()
        self.companyName = companyName
        self.designation = designation
    }
}
