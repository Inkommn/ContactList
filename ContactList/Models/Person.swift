//
//  Person.swift
//  ContactList
//
//  Created by Shamkhan Mutuskhanov on 11.06.2023.
//

struct Person {
    
    var names: [String]
    var surnames: [String]
    var emails: [String]
    var phoneNumbers: [String]
    
    static func getContacts() -> Person {
        let data = DataManager()
        
        let person = Person(names: data.names, surnames: data.surnames, emails: data.emails, phoneNumbers: data.phoneNumbers)
        
        return person
        
        
        
    }
}
