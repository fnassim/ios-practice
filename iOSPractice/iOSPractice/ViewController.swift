//
//  ViewController.swift
//  iOSPractice
//
//  Created by Fadel Nassim on 2/1/19.
//  Copyright © 2019 Fadel Nassim. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        Alamofire.request("http://www.splashbase.co/api/v1/images/1").responseData  { (resData) -> Void in
            let swiftyJsonVar = JSON(resData.result.value!)
            print(swiftyJsonVar)
        }
    }


}

