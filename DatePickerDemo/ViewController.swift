//
//  ViewController.swift
//  DatePickerDemo
//
//  Created by Akash Technolabs on 08/11/17.
//  Copyright © 2017 Akash Technolabs. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{

    
    @IBOutlet weak var lblTime: UILabel!
    
    @IBOutlet weak var lblDate: UILabel!
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func valueChangedEvent(_ sender: UIDatePicker)
    {
        let dateFormater = DateFormatter()
        //dateFormater.dateFormat = "dd.mm.yyyy"
        dateFormater.dateStyle = DateFormatter.Style.full
        dateFormater.timeStyle = DateFormatter.Style.short
        
        
        let strDate = dateFormater.string(from: sender.date)
    
        lblDate.text = strDate
        
        
    }
    

}

