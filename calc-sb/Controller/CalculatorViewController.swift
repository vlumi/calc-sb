//
//  ViewController.swift
//  calc-sb
//
//  Created by Ville Misaki on 21-12-07.
//

import UIKit

class CalculatorViewController: UIViewController {
    
    @IBOutlet weak var labelResult: UILabel!
    
    let calculator: Calculator = Calculator()
    let inputValue: InputValue = InputValue()
    
    var currentOperator: Operator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateView()
    }
    
    private func updateView() {
        let value = inputValue.isInput() ? inputValue.getValue() : calculator.value
        labelResult.text = "\(value)"
    }
    private func calculate() {
        let value = inputValue.getValue()
        inputValue.reset()
        calculator.calculate(value, currentOperator)
    }
    
    @IBAction func key0(_ sender: Any) {
        inputValue.addDigit(digit: 0)
        updateView()
    }
    @IBAction func key1(_ sender: Any) {
        inputValue.addDigit(digit: 1)
        updateView()
    }
    @IBAction func key2(_ sender: Any) {
        inputValue.addDigit(digit: 2)
        updateView()
    }
    @IBAction func key3(_ sender: Any) {
        inputValue.addDigit(digit: 3)
        updateView()
    }
    @IBAction func key4(_ sender: Any) {
        inputValue.addDigit(digit: 4)
        updateView()
    }
    @IBAction func key5(_ sender: Any) {
        inputValue.addDigit(digit: 5)
        updateView()
    }
    @IBAction func key6(_ sender: Any) {
        inputValue.addDigit(digit: 6)
        updateView()
    }
    @IBAction func key7(_ sender: Any) {
        inputValue.addDigit(digit: 7)
        updateView()
    }
    @IBAction func key8(_ sender: Any) {
        inputValue.addDigit(digit: 8)
        updateView()
    }
    @IBAction func key9(_ sender: Any) {
        inputValue.addDigit(digit: 9)
        updateView()
    }
    @IBAction func keyDot(_ sender: Any) {
        inputValue.addDecimalPoint()
        updateView()
    }
    
    @IBAction func keyClearAll(_ sender: Any) {
        inputValue.reset()
        calculator.reset()
        updateView()
    }
    @IBAction func keyClear(_ sender: Any) {
        inputValue.reset()
        updateView()
    }
    @IBAction func keyPlus(_ sender: Any) {
        calculate()
        currentOperator = .plus
        updateView()
    }
    @IBAction func keyMinus(_ sender: Any) {
        calculate()
        currentOperator = .minus
        updateView()
    }
    @IBAction func keyMultiply(_ sender: Any) {
        calculate()
        currentOperator = .multiply
        updateView()
    }
    @IBAction func keyDivide(_ sender: Any) {
        calculate()
        currentOperator = .divide
        updateView()
    }
    @IBAction func keyResult(_ sender: Any) {
        calculate()
        currentOperator = nil
        updateView()
    }
}

