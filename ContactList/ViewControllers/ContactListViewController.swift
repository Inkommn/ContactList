//
//  ViewController.swift
//  ContactList
//
//  Created by Shamkhan Mutuskhanov on 11.06.2023.
//

import UIKit

final class ContactListViewController: UITableViewController {
    var info = Person.getContacts()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}


extension ContactListViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactList", for: indexPath)
        var content = cell.defaultContentConfiguration()
        
        
        
        return cell
    }
}
