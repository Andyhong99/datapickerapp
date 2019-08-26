//
//  ViewController.swift
//  DatePickerApp
//
//  Created by Andy Hong on 2019-08-26.
//  Copyright © 2019 triOS College. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var myDatePicker: UIDatePicker!
    let dateFormatter: DateFormatter = DateFormatter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dateFormatter.dateStyle = .short
        dateFormatter.timeStyle = .short
    }

    func ShowAlert(dateTime : String){
        let alert = UIAlertController(title: "Selected Date and Time", message:"\(dateTime)", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ok", style: .default, handler: {action -> Void in
        })
        alert.addAction(okAction)
        self.present(alert, animated: true, completion: nil)
    }
    
    
    @IBAction func getCurrentDateTime(_ sender: UIButton) {
        let selectedDate: String = dateFormatter.string(from: myDatePicker.date)
        ShowAlert(dateTime: selectedDate )
    }
    
    @IBAction func dateChanged(_ sender: UIDatePicker) {
        let selectedDate: String = dateFormatter.string(from: myDatePicker.date)
        ShowAlert(dateTime: selectedDate )    }
    
}

