//
//  ViewController.swift
//  ContactList
//
//  Created by Shamkhan Mutuskhanov on 11.06.2023.
//

import UIKit

final class ContactListViewController: UITableViewController {
    
    private var info = Person.getRandomContacts()
    
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
        
        content.text = contacts.fullName
        
        cell.contentConfiguration = content
        
        return cell
    }
}
