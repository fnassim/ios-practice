//
//  ImageData.swift
//  iOSPractice
//
//  Created by Fadel Nassim on 2/1/19.
//  Copyright © 2019 Fadel Nassim. All rights reserved.
//

import Foundation
class ImageData : Decodable {
    var id: Int?;
    var url: String?;
    var site : String?;
    var large_url : String?;
    var copyright: String?;
    var source_id: Int?;
    
    init() {
        id = 0;
        url = "";
        site = "";
        large_url = "";
        copyright = "";
        source_id = 0;
    }
}
