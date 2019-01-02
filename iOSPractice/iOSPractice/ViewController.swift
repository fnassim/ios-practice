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
//        Alamofire.request("http://www.splashbase.co/api/v1/images/search?query=car").responseData  { (resData) -> Void in
//            let swiftyJsonVar = try? JSONDecoder().decode(Image.self, from: resData.result.value!);
//            print(resData.result.value!)
//        }
        
        Alamofire.request("http://www.splashbase.co/api/v1/images/search?query=blue").responseData { (resData) -> Void in
            print(resData.result.value!)
            let img: Image = try! JSONDecoder().decode(Image.self, from: resData.result.value!)
            print(img.images[0].url)
        }
    }


}

