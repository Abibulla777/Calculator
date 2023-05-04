//
//  ViewController.swift
//  Calculator2
//
//  Created by abibulla on 13.04.2023.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var firstNumber: UITextField!
    @IBOutlet weak var secondNumber: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var plusButton: UIButton!
    @IBOutlet weak var minusButton: UIButton!
    @IBOutlet weak var multiplyButton: UIButton!
    @IBOutlet weak var divideButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        plusButton.setTitleColor(.green, for: .normal)
        minusButton.setTitleColor(.green, for: .normal)
        multiplyButton.setTitleColor(.green, for: .normal)
        divideButton.setTitleColor(.green, for: .normal)
    }
    @IBAction func operationPressed(_ sender: UIButton) {
        let number1: Double? = Double(firstNumber.text!)
        let number2: Double? = Double(secondNumber.text!)
        let result: Double? = number1! + number2!
        resultLabel.text = String(result!)
    }
    @IBAction func minusPressed(_ sender: UIButton) {
        let number1: Double? = Double(firstNumber.text!)
        let number2: Double? = Double(secondNumber.text!)
        let result: Double? = number1! - number2!
        resultLabel.text = String(result!)
    }
    @IBAction func multiplyPressed(_ sender: UIButton) {
        let number1: Double? = Double(firstNumber.text!)
        let number2: Double? = Double(secondNumber.text!)
        let result: Double? = number1! * number2!
        resultLabel.text = String(result!)
    }
    @IBAction func dividePressed(_ sender: UIButton) {
        let number1: Double? = Double(firstNumber.text!)
        let number2: Double? = Double(secondNumber.text!)
        let result: Double? = number1! / number2!
        resultLabel.text = String(result!)
    }
    @IBAction func reshreshPressed(_ sender: UIButton) {
        resultLabel.text = "0"
        firstNumber.text = ""
        secondNumber.text = ""
    }
}

