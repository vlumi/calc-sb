//
//  ViewController.swift
//  calc-sb
//
//  Created by Ville Misaki on 21-12-07.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var labelResult: UILabel!
    
    var isInput = false
    var result = 0.0
    var current = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        update()
    }
    
    private func update() {
        if (isInput) {
            labelResult.text = "\(current)"
        } else {
            labelResult.text = "\(result)"
        }
    }
    
    private func addNum(num: Int) {
        isInput = true
        current *= 10
        current += Double(num)
        update()
    }
    
    @IBAction func key0(_ sender: Any) {
        addNum(num: 0)
    }
    @IBAction func key1(_ sender: Any) {
        addNum(num: 1)
    }
    @IBAction func key2(_ sender: Any) {
        addNum(num: 2)
    }
    @IBAction func key3(_ sender: Any) {
        addNum(num: 3)
    }
    @IBAction func key4(_ sender: Any) {
        addNum(num: 4)
    }
    @IBAction func key5(_ sender: Any) {
        addNum(num: 5)
    }
    @IBAction func key6(_ sender: Any) {
        addNum(num: 6)
    }
    @IBAction func key7(_ sender: Any) {
        addNum(num: 7)
    }
    @IBAction func key8(_ sender: Any) {
        addNum(num: 8)
    }
    @IBAction func key9(_ sender: Any) {
        addNum(num: 9)
    }
    @IBAction func keyPlus(_ sender: Any) {
        result += current
        current = 0
        isInput = false
        update()
    }
    @IBAction func keyMinus(_ sender: Any) {
        result -= current
        current = 0
        isInput = false
        update()
    }
    @IBAction func keyStar(_ sender: Any) {
        result *= current
        current = 0
        isInput = false
        update()
    }
    @IBAction func keySlash(_ sender: Any) {
        result /= current
        current = 0
        isInput = false
        update()
    }
}

