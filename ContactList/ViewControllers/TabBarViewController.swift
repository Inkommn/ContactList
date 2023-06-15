//
//  TabBarViewController.swift
//  ContactList
//
//  Created by Shamkhan Mutuskhanov on 14.06.2023.
//

import UIKit

final class TabBarViewController: UITabBarController {
    // MARK: - Private properties
    private let randomContacts = Person.getRandomContacts()
    
    // MARK: - UIViewController
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Persons List"
        sendPersonsInfoToTableViews()
    }
    
    // MARK: - Private methods
    private func sendPersonsInfoToTableViews() {
        guard let viewControllers = self.viewControllers else { return }
        
        viewControllers.forEach { viewController in
            if let contactListVC = viewController as? ContactListViewController {
                contactListVC.dataSource = randomContacts
            } else if let secondContactListVC = viewController as? SecondContactListViewController {
                secondContactListVC.dataSource = randomContacts
            }
        }
    }
}


