//
//  ImageTableViewCell.swift
//  iOSPractice
//
//  Created by Fadel Nassim on 2/1/19.
//  Copyright © 2019 Fadel Nassim. All rights reserved.
//

import UIKit
import PINCache
import PINRemoteImage
import PINOperation

class ImageTableViewCell: UITableViewCell {
    
    @IBOutlet weak var wallpaper: UIImageView!
    
    public func setImage(url: String){
        wallpaper.pin_setImage(from: URL(string: url)!)
    }
}
