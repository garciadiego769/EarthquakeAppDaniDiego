//
//  TerremotoTableViewCell.swift
//  EarthquakeApp
//
//  Created by  on 27/2/19.
//  Copyright © 2019 DaniDiego. All rights reserved.
//

import UIKit

class TerremotoTableViewCell: UITableViewCell {

    @IBOutlet weak var titulo: UILabel!
    @IBOutlet weak var magnitud: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
