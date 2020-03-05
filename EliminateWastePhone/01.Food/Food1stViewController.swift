//
//  Food1stViewController.swift
//  EliminateWastePhone
//
//  Created by YutaroHagiwara on 2020/02/17.
//  Copyright © 2020 YutaroHagiwara. All rights reserved.
//

import UIKit

class Food1stViewController: UIViewController , UITableViewDelegate, UITableViewDataSource {
    
   
    @IBOutlet weak var foodTableView: UITableView!
    
    // MARK: - CustomCell
    enum Cell: Int, CaseIterable {
        case speciesCell
        case bodyWeightCell
        case coefficientCell

        var cellIdentifier: String {
            switch self {
            case .speciesCell:
                return "LabelSegmentCell"
            case .bodyWeightCell, .coefficientCell:
                return "LabelTextFieldCell"
            }
        }
    }
    
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
        
        // MARK: - CustomCell
        foodTableView.register(UINib(nibName: "LabelSegmentCell", bundle: nil), forCellReuseIdentifier: "LabelSegmentCell")
        foodTableView.register(UINib(nibName: "LabelTextFieldCell", bundle: nil), forCellReuseIdentifier: "LabelTextFieldCell")
    }
    
    
    // Number of cells
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Cell.allCases.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellType = Cell(rawValue: indexPath.row)!
        switch cellType {
        case .speciesCell:
            let cell = tableView.dequeueReusableCell(withIdentifier: cellType.cellIdentifier) as! LabelSegmentCell
            return cell
        case .bodyWeightCell:
            let cell = tableView.dequeueReusableCell(withIdentifier: cellType.cellIdentifier) as! LabelTextFieldCell
            return cell
        case .coefficientCell:
            let cell = tableView.dequeueReusableCell(withIdentifier: cellType.cellIdentifier) as! LabelTextFieldCell
            return cell
        }
        
    }
    // セルの高さ
    func tableView(_ table: UITableView,heightForRowAt indexPath: IndexPath) -> CGFloat {
        return  44
    }

}
