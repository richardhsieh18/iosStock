//
//  TableViewCell.swift
//  iosStock
//
//  Created by chang on 2018/6/27.
//  Copyright © 2018年 chang. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    
    @IBOutlet weak var number: UILabel!
    @IBOutlet weak var tv1: UILabel!
    @IBOutlet weak var tv2: UILabel!
    @IBOutlet weak var tv3: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
