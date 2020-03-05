//
//  LabelTextFieldCell.swift
//  EliminateWastePhone
//
//  Created by YutaroHagiwara on 2020/03/02.
//  Copyright © 2020 YutaroHagiwara. All rights reserved.
//

import UIKit

class LabelTextFieldCell: UITableViewCell, UITextFieldDelegate  {

    @IBOutlet weak var firstLabel: UILabel!
    @IBOutlet weak var firstTextField: UITextField!
    @IBOutlet weak var secondLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // MARK: - TextField
        firstTextField.delegate = self
        // Put the "Done" button on the keyboard
        let toolbarTextField = UIToolbar()
        let spaceBarButtonItem = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
//        let doneBarButtonItem = UIBarButtonItem(title: "done", style: .done, target: self, action: #selector(enterBodyWeight))
//        toolbarTextField.items = [spaceBarButtonItem, doneBarButtonItem]
        toolbarTextField.sizeToFit()
        firstTextField.inputAccessoryView = toolbarTextField
        // Numeric keyboard (with decimal point)
        firstTextField.keyboardType = UIKeyboardType.decimalPad
        // Identify Placeholder, change to 17-size system font
        let bodyWeightPlaceholder = firstTextField?.value(forKey: "placeholderLabel") as? UILabel
        bodyWeightPlaceholder?.font = .systemFont(ofSize: 17)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
