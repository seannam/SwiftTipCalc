//
//  SettingsViewController.swift
//  TipCalc
//
//  Created by Sean Nam on 2/2/17.
//  Copyright © 2017 Sean Nam. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    @IBOutlet weak var tipControlDefaultSelector: UISegmentedControl!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func setDefaultPercentage(_ sender: Any) {
        tipDefaultIndex = tipControlDefaultSelector.selectedSegmentIndex;
    }
    

}
