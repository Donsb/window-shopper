//
//  MainVC.swift
//  window-shopper
//
//  Created by Donald Belliveau on 2017-11-28.
//  Copyright © 2017 Donald Belliveau. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    
    /*
     IBOutlets
     */
    
    @IBOutlet weak var wageTxt: CurrencyTxtField!
    @IBOutlet weak var priceTxt: CurrencyTxtField!
    @IBOutlet weak var resultLbl: UILabel!
    @IBOutlet weak var hoursLbl: UILabel!
    
    /*
     Functions
     */
    
    /*
     View Did Load
     */
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Create UIButton attaching to the textfield's keyboard.
        let calcBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: 60))
        // Set Button Colour
        calcBtn.backgroundColor = #colorLiteral(red: 0.9254902005, green: 0.4557419206, blue: 0.3894221219, alpha: 1)
        //Set Button Title
        calcBtn.setTitle("Calculate", for: .normal)
        // Set Button Title Colour
        calcBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        // Target for when the button is pressed (what function)
        calcBtn.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        
        wageTxt.inputAccessoryView = calcBtn
        priceTxt.inputAccessoryView = calcBtn
        
        // Hide Labels
        resultLbl.isHidden = true
        hoursLbl.isHidden = true
    }
    /*
     END View Did Load.
     */
    
    
    /*
     Did Receive Memory Warning.
     */
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    /*
     END Did Receive Memory Warning.
     */
    
    
    /*
     Calculate Button Function
     */
    
    @objc func calculate() {
        // Make sure wageTxt and priceTxt isn't Nil.
        if let wageTxt = wageTxt.text, let priceTxt = priceTxt.text {
            // Make sure we can cast the 2 Strings to Doubles.
            if let wage = Double(wageTxt), let price = Double(priceTxt) {
                // Dismiss keyboard
                view.endEditing(true)
                resultLbl.isHidden = false
                hoursLbl.isHidden = false
                resultLbl.text = "\(Wage.getHours(forWage: wage, andPrice: price))"
                //print(resultLbl.text)
            }
        }
    }
    /*
     END Calculate Button Function.
     */
    
    
    /*
     Clear Calcutator Button Pressed Function.
     */
    
    @IBAction func clearCalculatorPressed(_ sender: Any) {
        
        // Hide Labels & Clear Test Fields.
        resultLbl.isHidden = true
        hoursLbl.isHidden = true
        wageTxt.text = ""
        priceTxt.text = ""
        
    }
    /*
     END Clear Calaculator Button Pressed Function.
     */
    
}

