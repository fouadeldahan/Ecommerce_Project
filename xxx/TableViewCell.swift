//
//  TableViewCell.swift
//  xxx
//
//  Created by odc on 29/07/2023.
//

import UIKit

class TableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    @IBOutlet weak var image1: UIImageView!
    @IBOutlet weak var price1: UILabel!
    @IBOutlet weak var category1: UILabel!
    @IBOutlet weak var title1: UILabel!
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
