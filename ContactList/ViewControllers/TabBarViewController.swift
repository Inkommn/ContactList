//
//  TabBarViewController.swift
//  ContactList
//
//  Created by Shamkhan Mutuskhanov on 14.06.2023.
//

import UIKit

final class TabBarViewController: UITabBarController {
    var randomContacts = Person.getRandomContacts()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func prepare() {
        let viewControllers = tabBarController?.viewControllers
        if let contactListVC = viewControllers?[0] as? ContactListViewController {
            contactListVC.dataSource = randomContacts
        }  else if let secondContactListVC = viewControllers?[1] as? SecondContactListViewController {
            secondContactListVC.dataSource = randomContacts
        }
    }
}


