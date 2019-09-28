//
//  ActivityViewController.swift
//  EasyImageCollector
//
//  Created by Todd Krokowski on 9/11/19.
//  Copyright © 2019 Todd Krokowski. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    var viewModel = MainViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fillUI()
    }
    
    fileprivate func fillUI() {
        
    }
}

extension MainViewController: UITableViewDelegate, UITableViewDataSource {

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "activityCell", for: indexPath)
        if let activityCell = viewModel.fetchActivityCellData(row: indexPath.row) {
            if let thumb = cell.viewWithTag(100) as? UIImageView {
                thumb.image = activityCell.thumb
            }
            if let name = cell.viewWithTag(200) as? UILabel {
                name.text = activityCell.name
            }
            if let dateTime = cell.viewWithTag(300) as? UILabel {
                dateTime.text = activityCell.formattedDateTime
            }
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.numberOfActivities
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("selected a row.")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "EditActivitySegue" {
            if let dest = segue.destination as? EditActivityController {
                // pass in the data for the selected cell to the EditActivityViewController
            }
        }
    }
}
