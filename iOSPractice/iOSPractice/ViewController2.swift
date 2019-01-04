//
//  ViewController2.swift
//  iOSPractice
//
//  Created by Fadel Nassim on 4/1/19.
//  Copyright © 2019 Fadel Nassim. All rights reserved.
//

import UIKit
import PINCache
import PINRemoteImage
import PINOperation

class ViewController2: UIViewController {
   
    @IBOutlet weak var idLabel: UILabel!
    
    @IBOutlet weak var urlLabel: UILabel!
    
    @IBOutlet weak var previewImageView: UIImageView!
    
    var img: ImageData?
    override func viewDidLoad() {
        super.viewDidLoad()
        idLabel.text = "ID: " + String(img!.id!)
        urlLabel.text = img?.url
        previewImageView.pin_setImage(from: URL(string: (img?.url!)!)!)
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
