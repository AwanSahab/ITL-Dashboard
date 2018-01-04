//
//  CustomerDetailsTableViewCell.swift
//  ITL-Dashboard
//
//  Created by Muneeb Awan on 1/4/18.
//  Copyright © 2018 Muneeb Awan. All rights reserved.
//

import UIKit

class CustomerDetailsTableViewCell: UITableViewCell {
    
    @IBOutlet var imgLogo: UIImageView!
    @IBOutlet var lblTotQuant: UILabel!
    @IBOutlet var lblStrtTime: UILabel!
    @IBOutlet var lblEndTime: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
