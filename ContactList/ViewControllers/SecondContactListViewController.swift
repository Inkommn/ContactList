//
//  SecondContactListViewController.swift
//  ContactList
//
//  Created by Shamkhan Mutuskhanov on 13.06.2023.
//

import UIKit

final class SecondContactListViewController: UITableViewController {

    var dataSource: [Person]!
    
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        dataSource.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "secondContactList", for: indexPath)
        let contact = dataSource[indexPath.row]
        var content = cell.defaultContentConfiguration()
        
        content.text = contact.fullName

        cell.contentConfiguration = content
        return cell
    }
}
