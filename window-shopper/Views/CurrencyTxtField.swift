//
//  CurrencyTxtField.swift
//  window-shopper
//
//  Created by Donald Belliveau on 2017-11-28.
//  Copyright © 2017 Donald Belliveau. All rights reserved.
//

import UIKit

@IBDesignable // Add this line to see your custom changes in InterFace Builder.  Must also add a Function.

class CurrencyTxtField: UITextField {
    
    /*
     Draw Rect Function.
     Function to show the "Dollar Sign" based on the country of location.
     */
    
    override func draw(_ rect: CGRect) {
        // Never Call if empty!!!
        let size: CGFloat = 20
        let currencyLbl = UILabel(frame: CGRect(x: 5, y: (frame.size.height / 2) - size / 2, width: size, height: size))
        currencyLbl.backgroundColor = #colorLiteral(red: 0.8485361108, green: 0.8485361108, blue: 0.8485361108, alpha: 1)
        currencyLbl.textAlignment = .center
        currencyLbl.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        currencyLbl.layer.cornerRadius = 5.0
        currencyLbl.clipsToBounds = true
        
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = .current
        currencyLbl.text = formatter.currencySymbol
        addSubview(currencyLbl)
    }
    /*
     END Draw Rect Function.
     */
    
    
    /*
     Function to see custom changes in InterFace Builder.
     */
    
    override func prepareForInterfaceBuilder() {
        customizedView()
    }
    
    /*
     END Function to see Interface Builder.
     */
    
    
    /*
     Awake From Nib.
     */
    
    override func awakeFromNib() {
        super.awakeFromNib()
        customizedView()
    }
    /*
     END Awake From Nib.
     */
    
    
    /*
     Customized View Function.
     Set all my change codes into a Function and call function in both prepareForIB and awakeFromNib.
     */
    
    func customizedView() {
        /*
         Set textField colour to white
         25% opac (somewhat seethrough)
         Round corners of the TextField
         align text to center
         */
        backgroundColor = #colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 0.25)
        layer.cornerRadius = 5.0
        textAlignment = .center
        // end of Colour, Alignment and Rounding
        
        // Change colour of Placeholder text.
        if placeholder == nil {
            placeholder = " " // If nil, set it to a empty space string to avoid nils.
        }
        
        clipsToBounds = true
        
        if let p = placeholder {
            let place = NSAttributedString(string: p, attributes: [.foregroundColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
        //End change colour of Placeholder
    }
    /*
     END Customized View Function.
     */
    
    
}
