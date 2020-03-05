//
//  ViewController.swift
//  EliminateWastePhone
//
//  Created by YutaroHagiwara on 2020/02/16.
//  Copyright © 2020 YutaroHagiwara. All rights reserved.
//

import UIKit

// MARK: - UISearchBar
// Get TextField in UISearchBar
extension UISearchBar {
    var textField: UITextField? {
        if #available(iOS 13.0, *) {
            return searchTextField
        } else {
            return value(forKey: "_searchField") as? UITextField
        }
    }
}
// Get accessories in TextField
extension UITextField {
    //Magnifying glass
    var lupeImageView: UIImageView? {
        return leftView as? UIImageView
    }
}
//Change RenderingMode of View to alwaysTemplate
extension UIImageView {
  func becomeImageAlwaysTemplate() {
    image = image?.withRenderingMode(.alwaysTemplate)
  }
}

class ExtensionViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
