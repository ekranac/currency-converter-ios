//
//  ViewController.swift
//  CurrencyConverter
//
//  Created by Ziga Besal on 06/12/15.
//  Copyright © 2015 Ziga Besal. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{

    // MARK: Compontents
    @IBOutlet weak var eurTextField: UITextField!
    @IBOutlet weak var convertedLabel: UILabel!
    @IBOutlet weak var btnJPY: UIButton!
    @IBOutlet weak var btnUSD: UIButton!
    @IBOutlet weak var btnGBP: UIButton!
    
    //MARK: Conversion rates
    let jpyValue = 131.64
    let usdValue = 1.09
    let gbpValue = 0.73
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: Conversion execution
    @IBAction func convertValues(sender: UIButton)
    {
        if eurTextField.text?.isEmpty == false
        {
            let fieldValue = eurTextField.text
            
            switch(sender)
            {
                case btnJPY:
                    setConvertedValue(fieldValue!, conversionRate: jpyValue, symbol: "¥")
                case btnUSD:
                    setConvertedValue(fieldValue!, conversionRate: usdValue, symbol: "$")
                case btnGBP:
                    setConvertedValue(fieldValue!, conversionRate: gbpValue, symbol: "£")
                default:
                    break
            }
        }
        else
        {
            convertedLabel.text = " "
        }
    }
    
    //MARK: Convert values function
    func setConvertedValue(fieldValue: String, conversionRate: Double, symbol: String)
    {
        let conversion = Double(fieldValue)!*conversionRate
        convertedLabel.text = String(conversion) + " " + symbol
    }
    
    //MARK: Other, keyboard dismissal
    @IBAction func dismissKeyboard(sender: AnyObject)
    {
        eurTextField.resignFirstResponder()
    }
}

