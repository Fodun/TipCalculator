//
//  ViewController.swift
//  tip
//
//  Created by Fodun on 9/7/20.
//  Copyright © 2020 Fodun. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //@IBOutlet weak var tipLabel: UILabel!
    //@IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var pplLabel: UILabel!
    
    
    @IBOutlet weak var newTotalLabel: UILabel!
    
    
    @IBAction func stepper(_ sender: UIStepper) {
        pplLabel.text = String(Int(sender.value))
        
        let bill = Double(billField.text!) ?? 0
        
            //Calculate the tip and total
            let tipPercentages = [0.1,0.15,0.2]
            
            let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
            let total = bill + tip
        
        let newTotal = total / sender.value
        
        newTotalLabel.text = String(format: "$%.2f",newTotal)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onTap(_ sender: Any) {
        print("Hello")
        view.endEditing(true)
    }
    
   
    @IBAction func calculateTip(_ sender: Any) {
        //Get the bill amount
        //let amount = billField.text.remove(at: billField.text.0)
        let bill = Double(billField.text!) ?? 0
    
        //Calculate the tip and total
        let tipPercentages = [0.1,0.15,0.2]
        
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        //Update the tip and total labels
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        
        
        
    }
    
  
    
}

