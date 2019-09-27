//
//  Activity.swift
//  EasyImageCollector
//
//  Created by Todd Krokowski on 9/21/19.
//  Copyright © 2019 Todd Krokowski. All rights reserved.
//

import Foundation
import RealmSwift

class Activity: Object {
    
    @objc dynamic var name = ""
    @objc dynamic var activityDescription = ""
    let photos = List<Photo>()
}
