//
//  ViewController.swift
//  TipApp
//
//  Created by Владислав Сизонов on 30.08.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var billTextField: UITextField!
    
    @IBOutlet var peopleCountLabel: UILabel!
    
    @IBOutlet var zeroButton: UIButton!
    @IBOutlet var tenButton: UIButton!
    @IBOutlet var fifteenButton: UIButton!
    @IBOutlet var resultButton: UIButton!
    
    var currentTip = 0.0
    
    
    override func viewDidLoad() {
        
    }

    
    
    @IBAction func buttonsPressed(_ sender: UIButton) {
        zeroButton.isSelected = false
        tenButton.isSelected = false
        fifteenButton.isSelected = false
        sender.isSelected = true
        
        let buttonTitle = String(sender.currentTitle!)
        let tip = Double(buttonTitle.dropLast())! / 100
        currentTip = tip
    }

    @IBAction func stepperChanged(_ sender: UIStepper) {
        peopleCountLabel.text = String(format: "%.0f",sender.value)
    }
}

