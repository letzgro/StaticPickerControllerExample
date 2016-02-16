//
//  ChooseKindOfExperienceViewController.swift
//  OnGo
//
//  Created by LEZGRO on 11/16/15.
//  Copyright © 2015 Lezgro. All rights reserved.
//

import UIKit

class StaticPickerController:  NSObject, UIPickerViewDataSource, UIPickerViewDelegate {
    
    @IBOutlet private weak var choosingTextField: UITextField?
    
    var items: [String] = []
    var selectedIndex: Int = 0
    weak var delegate: UIPickerViewDelegate?
    
    func initPickerWithItems(items: [String]) {
        self.items = items
        let picker = UIPickerView()
        
        picker.dataSource = self
        picker.delegate = self        
        
        self.choosingTextField?.inputView = picker
    }
    
    // MARK: UIPickerViewDataSource
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return self.items.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return self.items[row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        self.selectedIndex = row
        self.choosingTextField?.text = self.items[row]
        self.choosingTextField?.resignFirstResponder()
        if let delegate = self.delegate {
            delegate.pickerView!(pickerView, didSelectRow: row, inComponent: component)
        }
    }
    
}