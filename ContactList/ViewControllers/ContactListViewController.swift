//
//  ViewController.swift
//  ContactList
//
//  Created by Shamkhan Mutuskhanov on 11.06.2023.
//

import UIKit



final class ContactListViewController: UITableViewController {
    
    // MARK: - Public properties
    var dataSource: [Person]!
    
    // MARK: - UIViewController
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let contactDetailsVC = segue.destination as? ContactDetailsViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        
        contactDetailsVC.contact = dataSource[indexPath.row]
    }
}

// MARK: - Table View setup
extension ContactListViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        dataSource.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactList", for: indexPath)
        let contact = dataSource[indexPath.row]
        var content = cell.defaultContentConfiguration()
        
        content.text = contact.fullName
        
        cell.contentConfiguration = content
        
        return cell
    }
}

