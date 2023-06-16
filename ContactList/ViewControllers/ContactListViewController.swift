//
//  ViewController.swift
//  ContactList
//
//  Created by Shamkhan Mutuskhanov on 11.06.2023.
//

import UIKit



final class ContactListViewController: UITableViewController {
    
    // MARK: - Public properties
    var personList: [Person]!
    
    // MARK: - Override methods
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let contactDetailsVC = segue.destination as? ContactDetailsViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        
        contactDetailsVC.contact = personList[indexPath.row]
    }
}

// MARK: - UITableViewDataSource
extension ContactListViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        personList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        let contact = personList[indexPath.row]
        var content = cell.defaultContentConfiguration()
        
        content.text = contact.fullName
        cell.contentConfiguration = content
        
        return cell
    }
}

