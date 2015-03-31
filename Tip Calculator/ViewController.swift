//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Court Kizer on 3/29/15.
//  Copyright (c) 2015 blackislandstudio. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tip: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tip.text = "$0.00"
        totalLabel.text = " $0.00"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func onEditingChanged(sender: AnyObject) {
        //swift language is evolving. won't work in beta4
        var tipPercentages: Array<Double> = [0.1, 0.15, 0.2]
        var tipPercentage = tipPercentages[tipControl.selectedSegmentIndex]
        
        
        //var billAmount = billField.text._bridgeToObjectiveC().doubleValue
        var billAmount : Double = NSString(string: billField.text).doubleValue
        var tipAmount = billAmount * tipPercentage
        var total = billAmount + tipAmount
        
        tip.text = String(format: "$%.2f", tipAmount)
        totalLabel.text = String(format: "$%.2f", total)
    }
    
    
    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }
}

