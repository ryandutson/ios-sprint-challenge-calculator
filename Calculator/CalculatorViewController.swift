//
//  ViewController.swift
//  Calculator
//
//  Created by Ben Gohlke on 5/29/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {
    
    @IBOutlet weak var outputLabel: UILabel!
    
    var calcBrain: CalculatorBrain?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        calcBrain = CalculatorBrain()
    }
    
    // MARK: - Action Handlers
    
    @IBAction func operandTapped(_ sender: UIButton) {
        if let calcButton = sender.titleLabel?.text {
            outputLabel.text = calcBrain?.addOperandDigit(calcButton)
        }
    }
    
    @IBAction func operatorTapped(_ sender: UIButton) {
        calcBrain?.setOperator(<#T##operatorString: String##String#>)
        
    }
    
    @IBAction func equalTapped(_ sender: UIButton) {
        
    }
    
    @IBAction func clearTapped(_ sender: UIButton) {
        clearTransaction()
        outputLabel.text = "0"
    }
    
    // MARK: - Private
    
    private func clearTransaction() {
        calcBrain = CalculatorBrain()
    }
}
