//
//  ViewController.swift
//  StaticPickerControllerExample
//
//  Created by Ihor Rapalyuk on 2/13/16.
//  Copyright © 2016 Ihor Rapalyuk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var staticPickerController: StaticPickerController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let items = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]
        self.staticPickerController?.initPickerWithItems(items)
    }
}

