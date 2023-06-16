//
//  Services.swift
//  ContactList
//
//  Created by Shamkhan Mutuskhanov on 11.06.2023.
//

final class DataStore {
    static let shared = DataStore()
    
    let names = [
        "John",
        "Dagny",
        "Eddie",
        "Francisco",
        "Hank",
        "Ragnar",
        "Ellis"
    ]
    
    let surnames = [
        "Golt",
        "Taggart",
        "Willers",
        "d'Anconia",
        "Rearden",
        "Danneskjöld",
        "Wyatt"
    ]
    let phoneNumbers = [
        "1111101",
        "2222202",
        "3333303",
        "4444454",
        "5555565",
        "6666676",
        "7777707"
    ]
    let emails = [
        "red@email.com",
        "blue@email.com",
        "black@email.com",
        "pink@email.com",
        "yellow@email.com",
        "white@email.com",
        "grey@email.com"
    ]
    
    private init() {}
}


    
    
    
    
    
