//
//  SecondContactListViewController.swift
//  ContactList
//
//  Created by Shamkhan Mutuskhanov on 13.06.2023.
//

import UIKit

final class SecondContactListViewController: UITableViewController {
    // MARK: - Public properties
    var dataSource: [Person]!
}

// MARK: - Table View setup
extension SecondContactListViewController {
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        dataSource.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       2
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "secondContactList", for: indexPath)
        let contact = dataSource[indexPath.section]
        var content = cell.defaultContentConfiguration()
        
        switch indexPath.row {
        case 0:
            content.text = contact.phoneNumbers.first
            content.image = UIImage(systemName: "phone")
        default:
            content.text = contact.emails.first
            content.image = UIImage(systemName: "envelope")
        }
        
        cell.contentConfiguration = content
        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section < dataSource.count {
            return dataSource[section].fullName
        } else {
            return nil
        }
    }
}
