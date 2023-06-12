//
//  ViewController.swift
//  ContactList
//
//  Created by Shamkhan Mutuskhanov on 11.06.2023.
//

import UIKit

final class ContactListViewController: UITableViewController {
    
    private var personsInfo = Person.getRandomContacts()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}

extension ContactListViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        personsInfo.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactList", for: indexPath)
        let contacts = personsInfo[indexPath.row]
        var content = cell.defaultContentConfiguration()
        
        content.text = contacts.fullName
        
        cell.contentConfiguration = content
        
        return cell
    }
}
