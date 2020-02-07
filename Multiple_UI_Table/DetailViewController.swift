//
//  DetailViewController.swift
//  Multiple_UI_Table
//
//  Created by uxd on 7/2/20.
//  Copyright © 2020 uxd. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    
    @IBOutlet weak var l1: UILabel!
    @IBOutlet weak var l2: UILabel!
    @IBOutlet weak var l3: UILabel!
    @IBOutlet weak var img: UIImageView!
    
    var ii: [UIImage] = [#imageLiteral(resourceName: "a1"), #imageLiteral(resourceName: "a2")]
    var str1 : String!
    var str2 : String!
    var str3 : String!
    
    var pic : UIImage!
 
    override func viewDidLoad() {
        super.viewDidLoad()
        l1.text = str1
        l2.text = str2
        l3.text = str3
        img.image = pic
    }
    
}
