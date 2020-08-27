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
    
    var viewModel = ActivityViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        firstCategory.isEnabled = false
        secondCategory.isEnabled = false
        activityName.becomeFirstResponder()
    }
    
    @IBAction func categoriesToggled(_ sender: UISwitch) {
        viewModel.categoriesEnabled = sender.isOn
        firstCategory.isEnabled = viewModel.categoriesEnabled
        secondCategory.isEnabled = viewModel.categoriesEnabled
    }
    
    @IBAction func save(_ sender: Any) {
        viewModel.activityName = self.activityName.text
        viewModel.save()
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func cancel(_ sender: Any) {
        let alertController = UIAlertController(title: "Discard New Activity?", message: "Are you sure you want to discard this activity?", preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "Yes", style: .default, handler: {(alert: UIAlertAction!) in self.dismiss(animated: true, completion: nil)}))
        alertController.addAction(UIAlertAction(title: "No", style: .cancel, handler: nil))
        self.present(alertController, animated: true, completion: nil)
    }
    
}

extension ActivityViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        activityName.resignFirstResponder()
        return false
    }
}

 
