//
//  Calculator.swift
//  calc-sb
//
//  Created by Ville Misaki on 21-12-12.
//

import Foundation

class Calculator {
    private(set) var value: Double = 0.0
    
    func reset() {
        value = 0.0
    }
    
    func add(_ value: Double) {
        self.value += value
    }
    
    func deduct(_ value: Double) {
        self.value -= value
    }
    
    func multiply(_ value: Double) {
        self.value *= value
    }
    
    func divide(_ value: Double) {
        self.value /= value
    }
    
    func calculate(_ value: Double, _ op: Operator?) {
        guard let opr = op else {
            self.reset()
            self.add(value)
            return
        }
        
        switch opr {
        case .plus: self.add(value)
        case .minus: self.deduct(value)
        case .multiply: self.multiply(value)
        case .divide: self.divide(value)
        }
    }
    
}
