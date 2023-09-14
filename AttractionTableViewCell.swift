//
//  AttractionTableViewCell.swift
//  UIExample
//
//  Created by jason brown on 20/06/1402 AP.
//

import UIKit

class AttractionTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    @IBOutlet weak var attractionImage: UIImageView!
    
    @IBOutlet weak var attractionLabel: UILabel!
}
