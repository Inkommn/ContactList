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
    
    var fullName: String {
        "\(names.first ?? "") \(surnames.first ?? "") "
    }
    
    static func getRandomContacts() -> [Person] {
        let data = DataStore()
        var contacts: [Person] = []
        
        let randomNames = data.names.shuffled()
        let randomSurnames = data.surnames.shuffled()
        let randomEmails = data.emails.shuffled()
        let phoneNumbers = data.phoneNumbers.shuffled()
        
        for element in 0..<data.names.count {
            
            let person = Person(
                names: [randomNames[element]],
                surnames: [randomSurnames[element]],
                emails: [randomEmails[element]],
                phoneNumbers: [phoneNumbers[element]]
            )
            
            contacts.append(person)
        }
        
        return contacts
    }
}
