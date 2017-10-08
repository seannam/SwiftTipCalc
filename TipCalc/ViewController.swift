//
//  ViewController.swift
//  TipCalc
//
//  Created by Sean Nam on 2/2/17.
//  Copyright © 2017 Sean Nam. All rights reserved.
//

import UIKit

var tipDefaultIndex = 0;

class ViewController: UIViewController {
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    @IBOutlet weak var div2: UILabel!
    @IBOutlet weak var div3: UILabel!
    @IBOutlet weak var div4: UILabel!
    @IBOutlet weak var div5: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tipControl.selectedSegmentIndex = tipDefaultIndex;
    }

    override func viewDidAppear(_ animated: Bool) {
        // show keyboard on start
        billField.becomeFirstResponder()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true);
    }
    
    @IBAction func calculateTip(_ sender: AnyObject) {
        let tipPercentages = [0.15, 0.18, 0.20];

        // calculate tip and total based on bill
        let bill = Double(billField.text!) ?? 0;
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex];
        let total = bill + tip;
        
        // update tip and total labels
        tipLabel.text = String(format: "$%.2f", tip);
        totalLabel.text = String(format: "$%.2f", total);
        
        // calculate values for sharing
        div2.text = String(format: "$%.2f", total/2);
        div3.text = String(format: "$%.2f", total/3);
        div4.text = String(format: "$%.2f", total/4);
        div5.text = String(format: "$%.2f", total/5);
    }

}
