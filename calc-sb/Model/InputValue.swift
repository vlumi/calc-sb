//
//  InputValue.swift
//  calc-sb
//
//  Created by Ville Misaki on 21-12-12.
//

import Foundation

class InputValue {
    private var value: String = ""
    
    func reset() {
        value = ""
    }
    
    func addDigit(digit: Int) {
        if digit == 0 && !isInput() {
            return
        }
        value += "\(digit)"
        print("Added digit \(digit), now \(value)")
    }
    
    func addDecimalPoint() {
        if value.count == 0 {
            value += "0"
        }
        if !value.contains(".") {
            value += "."
        }
        print("Added decimal point, now \(value)")
    }
    
    func getValue() -> Double {
        return Double(value) ?? 0
    }
    
    func isInput() -> Bool {
        return value.count > 0
    }
}
