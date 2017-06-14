//
//  JobsTableViewCell.swift
//  Vendyr
//
//  Created by Emily Daskas on 6/8/17.
//  Copyright © 2017 Vendyr. All rights reserved.
//

import UIKit

class JobsTableViewCell: UITableViewCell {

    @IBOutlet weak var cell: UIView!
    @IBOutlet weak var jobNameLabel: UILabel!
    @IBOutlet weak var eventNameLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        cell.layer.borderColor = UIColor.clear.cgColor
        cell.layer.borderWidth = 50
 
    
        // Initialization code
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        contentView.frame = UIEdgeInsetsInsetRect(contentView.frame, UIEdgeInsetsMake(0, 0 , 1,1) )
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
