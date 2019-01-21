//
//  SecondViewController.swift
//  Days Matter
//
//  Created by Soft Dev on 1/9/19.
//  Copyright © 2019 Lily Guo. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        datePicker = UIDatePicker()
        datePicker?.datePickerMode = .date
        datePicker?.addTarget(self, action: #selector(SecondViewController.dateChanged(datePicker:)), for: .valueChanged)
        
        let tapGesture = UITapGestureRecognizer(target: self, action:#selector(SecondViewController.viewTapped(gestureRecognizer:)))
        
        view.addGestureRecognizer(tapGesture)
        
        chooseDate.inputView = datePicker
    }
    
    
    
    @objc func viewTapped(gestureRecognizer: UITapGestureRecognizer) {
        view.endEditing(true)
    }
    
    @objc func dateChanged(datePicker: UIDatePicker) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MM/dd/yyyy"
        chooseDate.text = dateFormatter.string(from: datePicker.date)
        view.endEditing(true)
    }

    
    @IBOutlet weak var editEventName: UITextField!
    @IBOutlet weak var chooseDate: UITextField!
    
    private var datePicker: UIDatePicker?
    
    @IBAction func backToListOfDate(_ sender: UIButton) {
        performSegue(withIdentifier: "backToListOfDate", sender: nil)
    }

    
    
}

