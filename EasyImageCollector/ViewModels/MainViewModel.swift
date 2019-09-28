//
//  MainViewModel.swift
//  EasyImageCollector
//
//  Created by Todd Krokowski on 9/27/19.
//  Copyright © 2019 Todd Krokowski. All rights reserved.
//

import Foundation
import UIKit

class ActivityCellData {
    var name: String
    var formattedDateTime: String
    var thumb: UIImage
    
    init(displayName: String, dateTime: String, pathForThumbnail: String) {
        name = displayName
        formattedDateTime = dateTime
        thumb = UIImage(named: pathForThumbnail) ?? UIImage(named: "image1.jpg")!
    }
}

class MainViewModel {
    private var thumbs = ["image1.jpg", "image2.jpg", "image3.jpg", "image4.jpg", "image5.jpg"]
    private var names = ["Dorian", "Harvey", "Katrina", "Andrew", "Sandy"]
    private var dateFormatter: DateFormatter
    var numberOfActivities = 5
    
    init() {
        dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MM/dd/yy HH:mm"
    }
    
    func fetchActivityCellData(row: Int) -> ActivityCellData? {
        return ActivityCellData(displayName: names[row], dateTime: dateFormatter.string(from: Date()), pathForThumbnail: thumbs[row])
    }
    
    
}
