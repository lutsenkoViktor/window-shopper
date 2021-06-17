//
//  CurrencyTxtField.swift
//  windowShopper
//
//  Created by ViktorLutsenko on 10.06.2021.
//

import UIKit
@IBDesignable

class CurrencyTxtField: UITextField {
    
    override func draw(_ rect: CGRect) {
        let size: CGFloat = 20.0
        let currencyLbl = UILabel(frame: CGRect(x: 5, y: (frame.size.height/2)-size/2, width: size, height: size) )
        currencyLbl.backgroundColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
            currencyLbl.textAlignment = .center
        currencyLbl.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        currencyLbl.clipsToBounds = true
        currencyLbl.layer.cornerRadius = 5.0
        
        let formatter = NumberFormatter ()
        formatter.numberStyle = .currency
        formatter.locale = .current
        currencyLbl.text = formatter.currencySymbol
        addSubview(currencyLbl)
    }
    
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
        clipsToBounds = true
            
        
        if let p = placeholder{
        attributedPlaceholder = NSAttributedString (string: p, attributes: [.foregroundColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
        textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    }
    }
    
}
