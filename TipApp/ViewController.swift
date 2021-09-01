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
    var peopleCount = 2
    var billTotal = ""
    
    override func viewDidLoad() {
        
    }

    
    
    @IBAction func buttonsPressed(_ sender: UIButton) {
        billTextField.endEditing(true)
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
        peopleCount = Int(String(format: "%.0f",sender.value))!
    }
    
    @IBAction func resultButtonPressed(_ sender: UIButton) {
        
        let result = String(Double(billTextField.text!)! * (1 + currentTip) / Double(peopleCount))
        performSegue(withIdentifier: "goResult", sender: self)
        
        billTotal = result
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "goResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.resultLabelTitle = billTotal
            
        }
    }
}

