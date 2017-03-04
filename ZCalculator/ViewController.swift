//
//  ViewController.swift
//  ZCalculator
//
//  Created by Zouhair Khallaf on 11/5/16.
//  Copyright © 2016 Zouhair Khallaf. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var display: UILabel!
    
    var UserInTheMiddleOfTypping: Bool = false
    
    @IBAction func appendDigit(sender: UIButton) {
        
        let digit = sender.currentTitle!
        if UserInTheMiddleOfTypping{
            display.text = display.text! + digit //Append
        }else{
            display.text = digit //Append
            UserInTheMiddleOfTypping = true
        }
    }
    
    @IBAction func enter() {
        UserInTheMiddleOfTypping = false
        
    }

    @IBAction func clear() {
        display.text = "0"
        UserInTheMiddleOfTypping = false
    }
    
}

