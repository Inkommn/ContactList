//
//  ContactDetailsViewController.swift
//  ContactList
//
//  Created by Shamkhan Mutuskhanov on 12.06.2023.
//

import UIKit

final class ContactDetailsViewController: UIViewController {
    
    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var contact: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        phoneLabel.text = contact.phoneNumbers.first
        emailLabel.text = contact.emails.first
        title = contact.fullName
    }
}
