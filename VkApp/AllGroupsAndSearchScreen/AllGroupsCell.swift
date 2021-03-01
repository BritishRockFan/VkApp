//
//  AllGroupsCell.swift
//  VkApp
//
//  Created by Никита Смирнов on 01.03.2021.
//

import UIKit

class AllGroupsCell: UITableViewCell {

    @IBOutlet weak var allGroupCellName: UILabel!
    @IBOutlet weak var allGroupCellPicture: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
