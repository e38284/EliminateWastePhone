//
//  LabelSegmentCell.swift
//  EliminateWastePhone
//
//  Created by YutaroHagiwara on 2020/03/02.
//  Copyright © 2020 YutaroHagiwara. All rights reserved.
//

import UIKit

class LabelSegmentCell: UITableViewCell {

    @IBOutlet weak var firstLabel: UILabel!
    @IBOutlet weak var firstSegment: UISegmentedControl!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
