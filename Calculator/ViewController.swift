//
//  ViewController.swift
//  Calculator
//
//  Created by 楊鎮宇 on 2017/3/29.
//  Copyright © 2017年 楊鎮宇. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var display: UILabel!
    
    var userIsInTheMiddleOfTyping = false
    
    @IBAction func touchDigit(_ sender: UIButton) {
        let digit = sender.currentTitle!
        if userIsInTheMiddleOfTyping {
            let textCurrentInDisplay = display.text!
            display.text = textCurrentInDisplay + digit
        } else {
            display.text = digit;
        }
        userIsInTheMiddleOfTyping = true;
    }
    
    @IBAction func performOperation(_ sender: UIButton) {
        userIsInTheMiddleOfTyping = false
        if let mathematicalSymbol = sender.currentTitle {
            if (mathematicalSymbol == "π") {
                display.text = String(Double.pi)
            }
        }
    }
}

