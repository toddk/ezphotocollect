//
//  ActivityViewController.swift
//  EasyImageCollector
//
//  Created by Todd Krokowski on 9/13/19.
//  Copyright © 2019 Todd Krokowski. All rights reserved.
//

import UIKit

class ActivityViewController: UIViewController {
    
    @IBOutlet weak var activityName: UITextField!
    @IBOutlet weak var hasCategories: UISwitch!
    @IBOutlet weak var firstCategory: UITextField!
    @IBOutlet weak var secondCategory: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func save(_ sender: Any) {
    }
    
    @IBAction func cancel(_ sender: Any) {
    }
    
}
