//
//  Photo.swift
//  EasyImageCollector
//
//  Created by Todd Krokowski on 9/21/19.
//  Copyright © 2019 Todd Krokowski. All rights reserved.
//

import Foundation
import RealmSwift

class Photo: Object {
    
    @objc dynamic var filePathFull = ""
    @objc dynamic var filePathThumb = ""
    @objc dynamic var lat = 0.0
    @objc dynamic var lon = 0.0
    @objc dynamic var hae = 0.0
    @objc dynamic var title = ""
    @objc dynamic var notes = ""
}
