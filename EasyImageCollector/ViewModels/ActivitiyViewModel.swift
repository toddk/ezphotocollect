//
//  ActivitiyViewModel.swift
//  EasyImageCollector
//
//  Created by Todd Krokowski on 9/22/19.
//  Copyright © 2019 Todd Krokowski. All rights reserved.
//

import Foundation

class ActivityViewModel {
    
    var categoriesEnabled = false
    let categories = [] as [String]
    var activityName: String?
    
    func save() {
        print("Saving...")
    }
}
