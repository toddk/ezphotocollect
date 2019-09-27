//
//  EditActivityController.swift
//  EasyImageCollector
//
//  Created by Todd Krokowski on 9/14/19.
//  Copyright © 2019 Todd Krokowski. All rights reserved.
//

import UIKit

class EditActivityController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension EditActivityController: UICollectionViewDataSource {
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        return UICollectionViewCell()
    }
    
    
}
