//
//  Emergency1stViewController.swift
//  EliminateWastePhone
//
//  Created by YutaroHagiwara on 2020/02/17.
//  Copyright © 2020 YutaroHagiwara. All rights reserved.
//

import UIKit

class Emergency1stViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // MARK: - NavigationBar
        // Change text in navigation bar
        self.navigationController?.navigationBar.titleTextAttributes = [
        // Change text color
            .foregroundColor: UIColor(red: 51/255, green: 89/255, blue: 121/255, alpha: 1)
        ]
        // Hide UINavigationBar back button text(NextViewController)
        let backButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        navigationItem.backBarButtonItem = backButtonItem
    }
}
