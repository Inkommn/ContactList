//
//  Person.swift
//  ContactList
//
//  Created by Shamkhan Mutuskhanov on 11.06.2023.
//

struct Person {
    let name: String
    let surname: String
    let email: String
    let phoneNumber: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getRandomContacts() -> [Person] {
        var contacts: [Person] = []
        
        let randomNames = DataStore.shared.names.shuffled()
        let randomSurnames = DataStore.shared.surnames.shuffled()
        let randomEmails = DataStore.shared.emails.shuffled()
        let randomPhoneNumbers = DataStore.shared.phoneNumbers.shuffled()
        
        let interationCount = min(
            randomNames.count,
            randomSurnames.count,
            randomEmails.count,
            randomPhoneNumbers.count
        )
        
        for index in 0..<interationCount {
            let person = Person(
                name: randomNames[index],
                surname: randomSurnames[index],
                email: randomEmails[index],
                phoneNumber: randomPhoneNumbers[index]
            )
            
            contacts.append(person)
        }
        
        return contacts
    }
}
