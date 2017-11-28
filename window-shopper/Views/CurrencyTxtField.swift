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
    
    // Function to see custom changes in InterFace Builder.
    override func prepareForInterfaceBuilder() {
        customizedView()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        customizedView()
    }
    
    // Set all my change codes into a Function and call function in both prepareForIB and awakeFromNib.
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
        /*
         END of Colour, Alignment and Rounding
         */
        
        
        /*
         Change colour of Placeholder text.
         */
        if placeholder == nil {
            placeholder = " " // If nil, set it to a empty space string to avoid nils.
        }
        
        if let p = placeholder {
            let place = NSAttributedString(string: p, attributes: [.foregroundColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
        /*
         End change colour of Placeholder
         */
    }
}
