//
//  DashListTableViewCell.swift
//  ITL-Dashboard
//
//  Created by Muneeb Awan on 1/4/18.
//  Copyright © 2018 Muneeb Awan. All rights reserved.
//

import UIKit

class DashListTableViewCell: UITableViewCell {

    @IBOutlet var imgIcon: UIImageView!
    @IBOutlet var lblListItem: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
