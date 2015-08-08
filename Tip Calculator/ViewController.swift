//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Gabriele on 8/7/15.
//  Copyright © 2015 Ashley Donohoe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let tipRate = 0.15

    @IBOutlet var orderAmountTextField: UITextField!
    
    
    @IBOutlet var tipAmountLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func calculateTip(sender: AnyObject) {
        
        let orderAmount = orderAmountTextField.text
        
        let doubleValue: Double = NSString(string: orderAmount!).doubleValue
        
        let totalTip = doubleValue * tipRate
        
        tipAmountLabel.text = String.localizedStringWithFormat("%.02f", totalTip)
    
    }

}

