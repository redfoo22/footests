//
//  MealTableViewCell.swift
//  \
//
//  Created by Coder on 8/1/16.
//  Copyright © 2016 Coder. All rights reserved.
//

import UIKit

class MealTableViewCell: UITableViewCell {
    //MARK Properties
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ratingControl: RatingControl!
    @IBOutlet weak var photoImageView: UIImageView!
    
    
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
