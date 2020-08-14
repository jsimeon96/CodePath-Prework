//
//  ViewController.swift
//  Tip Calculator
//
//  Created by jelani Simeon on 8/14/20.
//  Copyright © 2020 Codepath. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountField: UITextField!
    
    @IBOutlet weak var tipLabel: UILabel!
    
    @IBOutlet weak var tipPercentageControl: UISegmentedControl!
    
    @IBOutlet weak var totalLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onTap(_ sender: Any) {
    print ("hello")
           
           view.endEditing(true)
       
    }
    
    @IBAction func Calculatetip(_ sender: Any) {
        
        // Get the bill amount
        
        let bill = Double(billAmountField.text!) ?? 0
        let tipPercentages = [0.15, 0.18, 0.2]
       
         // Calculate the tip an total
        
        let tip = bill * tipPercentages[ tipPercentageControl.selectedSegmentIndex]
        let total = bill + tip
        
         // Update the tip and total labels
        
        tipLabel.text = String(format: "$%.2f", tip)
        
        totalLabel.text = String(format: "$%.2f", total)
        
       
   
       
        
      
        
        
        
        
    }
    
}

