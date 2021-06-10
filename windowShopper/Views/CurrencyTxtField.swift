//
//  CurrencyTxtField.swift
//  windowShopper
//
//  Created by ViktorLutsenko on 10.06.2021.
//

import UIKit
@IBDesignable

class CurrencyTxtField: UITextField {
    
    override func prepareForInterfaceBuilder() {
        customizeView()
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        customizeView()
        
    }
    
    func customizeView () {
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.262071363)
        layer.cornerRadius = 5
        textAlignment = .center
            
        
        if let p = placeholder{
        attributedPlaceholder = NSAttributedString (string: p, attributes: [.foregroundColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
        textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    }
    }
    
}
