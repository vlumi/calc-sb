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
        update()
    }
    
    private func update() {
        if (inputValue.isInput()) {
            print("Show input value \(inputValue.getValue())")
            labelResult.text = "\(inputValue.getValue())"
        } else {
            print("Show calculator value \(calculator.value)")
            labelResult.text = "\(calculator.value)"
        }
    }
    
    @IBAction func key0(_ sender: Any) {
        inputValue.addDigit(digit: 0)
        update()
    }
    @IBAction func key1(_ sender: Any) {
        inputValue.addDigit(digit: 1)
        update()
    }
    @IBAction func key2(_ sender: Any) {
        inputValue.addDigit(digit: 2)
        update()
    }
    @IBAction func key3(_ sender: Any) {
        inputValue.addDigit(digit: 3)
        update()
    }
    @IBAction func key4(_ sender: Any) {
        inputValue.addDigit(digit: 4)
        update()
    }
    @IBAction func key5(_ sender: Any) {
        inputValue.addDigit(digit: 5)
        update()
    }
    @IBAction func key6(_ sender: Any) {
        inputValue.addDigit(digit: 6)
        update()
    }
    @IBAction func key7(_ sender: Any) {
        inputValue.addDigit(digit: 7)
        update()
    }
    @IBAction func key8(_ sender: Any) {
        inputValue.addDigit(digit: 8)
        update()
    }
    @IBAction func key9(_ sender: Any) {
        inputValue.addDigit(digit: 9)
        update()
    }
    
    private func calculate() {
        let value = inputValue.getValue()
        inputValue.reset()
        
        guard let op = currentOperator else {
            calculator.reset()
            calculator.add(value)
            return
        }
        
        switch op {
        case .plus: calculator.add(value)
        case .minus: calculator.deduct(value)
        case .multiply: calculator.multiply(value)
        case .divide: calculator.divide(value)
        }
        print("Calculated value: \(calculator.value)")
    }
    
    @IBAction func keyPlus(_ sender: Any) {
        calculate()
        currentOperator = .plus
        update()
    }
    @IBAction func keyMinus(_ sender: Any) {
        calculate()
        currentOperator = .minus
        update()
    }
    @IBAction func keyMultiply(_ sender: Any) {
        calculate()
        currentOperator = .multiply
        update()
    }
    @IBAction func keyDivide(_ sender: Any) {
        calculate()
        currentOperator = .divide
        update()
    }
    @IBAction func keyResult(_ sender: Any) {
        calculate()
        currentOperator = nil
        update()
    }
}

