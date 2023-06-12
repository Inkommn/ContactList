//
//  ViewController.swift
//  ContactList
//
//  Created by Shamkhan Mutuskhanov on 11.06.2023.
//

import UIKit

final class ContactListViewController: UITableViewController {
    
    private var info = Person.getContacts()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}

extension ContactListViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        info.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactList", for: indexPath)
        let contacts = info[indexPath.row]
        var content = cell.defaultContentConfiguration()
        
        content.text = contacts.names.randomElement()
        content.secondaryText = contacts.surnames.randomElement()
        
        cell.contentConfiguration = content
        
        return cell
    }
}
