//
//  DataTableViewCell.swift
//  Multiple_UI_Table
//
//  Created by uxd on 7/2/20.
//  Copyright © 2020 uxd. All rights reserved.
//

import UIKit

class DataTableViewCell: UITableViewCell {

    
    @IBOutlet weak var lvl1: UILabel!
    @IBOutlet weak var lvl2: UILabel!
    @IBOutlet weak var lvl3: UILabel!
    var dhaka : Dhaka!{
        didSet{
            lvl1.text = dhaka.playerName
            lvl2.text = dhaka.playerAge
            lvl3.text = dhaka.playerFomration
        }
    }
    var ctg : Chittagong!{
        didSet{
            lvl1.text = ctg.playerName
            lvl2.text = ctg.playerAge
            lvl3.text = ctg.playerFomration
        }
    }
    var khulna : Khulna!{
        didSet{
            lvl1.text = khulna.playerName
            lvl2.text = khulna.playerAge
            lvl3.text = khulna.playerFomration
        }
    }
    var raj : Rajshahi!{
        didSet{
            lvl1.text = raj.playerName
            lvl2.text = raj.playerAge
            lvl3.text = raj.playerFomration
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    
}
