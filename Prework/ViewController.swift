//
//  ViewController.swift
//  Prework
//
//  Created by Eric Xie on 1/14/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var billAmounttextField: UITextField!
    @IBOutlet weak var TipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        
        let bill = Double(billAmounttextField.text!) ?? 0
        
        let tipPercentages = [0.15,0.18,0.2]
        
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        
        let total = tip + bill
        
        TipAmountLabel.text = String(format: "$%.2f",tip)
        
        totalLabel.text = String(format: "$%.2f", total)
        
    }
    
    
}

