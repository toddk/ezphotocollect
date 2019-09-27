//
//  MainViewModel.swift
//  EasyImageCollector
//
//  Created by Todd Krokowski on 9/27/19.
//  Copyright © 2019 Todd Krokowski. All rights reserved.
//

import Foundation

class ActivityCellData {
    var name: String
    var formattedDateTime: String
    var thumbPath: String
    
    init(displayName: String, dateTime: String, pathForThumbnail: String) {
        name = displayName
        formattedDateTime = dateTime
        thumbPath = pathForThumbnail
    }
}

class MainViewModel {
    
    private var dateFormatter: DateFormatter
    var numberOfActivities = 5
    
    init() {
        dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MM/dd/yy HH:mm"
    }
    
    func fetchActivityCellData(row: Int) -> ActivityCellData? {
        return ActivityCellData(displayName: "Test", dateTime: dateFormatter.string(from: Date()), pathForThumbnail: "/path/to/img.jpg")
    }
    
    
}
