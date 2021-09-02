//
//  ResultViewController.swift
//  TipApp
//
//  Created by Владислав Сизонов on 01.09.2021.
//

import UIKit

class ResultViewController: UIViewController {

    var resultLabelTitle = ""
    @IBOutlet var resultLabel: UILabel!
    @IBOutlet var recountButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultLabel.text = resultLabelTitle
        
    }
    
    @IBAction func recountButtonPressed(_ sender: UIButton) {
        dismiss(animated: true)
    }
    
}
