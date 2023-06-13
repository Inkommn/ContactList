//
//  SecondContactListViewController.swift
//  ContactList
//
//  Created by Shamkhan Mutuskhanov on 13.06.2023.
//

import UIKit

final class SecondContactListViewController: UITableViewController {
    

    
    

    override func viewDidLoad() {
        super.viewDidLoad()

  
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        0
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "secondContactList", for: indexPath)
        let contacts = contactInfo[indexPath.row]
        var content = cell.defaultContentConfiguration()
        
        content.text = contacts.fullName

        
        cell.contentConfiguration = content
        return cell
    }
}
