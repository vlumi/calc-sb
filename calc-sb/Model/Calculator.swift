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
    

}
