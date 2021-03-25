//
//  ViewController.swift
//  Prework
//
//  Created by Jenny Lee on 3/25/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmtTextField: UITextField!
    @IBOutlet weak var tipAmtLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateTip(_ sender: Any) {
        
        // get bill amt from text input
        let bill = Double(billAmtTextField.text!) ?? 0
        
        // get total tip via bill * tip %
        let tipPercentages = [0.15, 0.18, 0.20]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        // update tip amt
        tipAmtLabel.text = String(format: "$%.2f", tip)
        // update total amt
        totalLabel.text = String(format: "$%.2f", total)
        
    }
    
}

