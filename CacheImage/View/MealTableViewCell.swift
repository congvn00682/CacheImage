//
//  MealTableViewCell.swift
//  CacheImage
//
//  Created by Vu Ngoc Cong on 4/16/18.
//  Copyright © 2018 Vu Ngoc Cong. All rights reserved.
//

import UIKit

class MealTableViewCell: UITableViewCell {

    
    @IBOutlet weak var photoView: UIImageView!
    @IBOutlet weak var spinner: UIActivityIndicatorView!

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
  
        // Configure the view for the selected state
    }

}
