//
//  InputButton.swift
//  calc-sb
//
//  Created by Ville Misaki on 21-12-12.
//

import UIKit

@IBDesignable
class InputButton: UIButton {
    
    override func prepareForInterfaceBuilder() {
        updateView()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        updateView()
    }
    
    fileprivate func updateView() {
        layer.cornerRadius = 5
    }
}
