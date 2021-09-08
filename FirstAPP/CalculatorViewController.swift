//
//  ViewController2.swift
//  FirstAPP
//
//  Created by Umer Abdullah on 07/09/2021.
//

import UIKit

// camelCase
// SnakeCase

class CalculatorViewController: UIViewController {
    
    var text1=0
    var text2=0
    var varOperator = "+"
    
    @IBOutlet weak var CalcScreen: UILabel!

    @IBAction func getNum(_ sender: UIButton) {
        let num = sender.titleLabel?.text
        CalcScreen.text = CalcScreen.text! + num!
    }

    @IBAction func calc(_ sender: UIButton)
    {
    // Optional unwrapping
        // Force unwrapping
        // Optional chaining
        
        if let unwrappedText = sender.titleLabel?.text {
            varOperator = unwrappedText
            text1=Int(CalcScreen.text!)!
            CalcScreen.text=""
        }
    }
    
    @IBAction func CalcEquals(_ sender: Any)
    {
        text2=Int(CalcScreen.text!)!
        switch(varOperator)
        {
        case "+":
            CalcScreen.text=String(text1+text2)
        case "-":
            CalcScreen.text=String(text1-text2)
        case "*":
            CalcScreen.text=String(text1*text2)
        case "/":
            if(text2 != 0)
            {
                CalcScreen.text=String(text1/text2)
            }
            else
            {
            CalcScreen.text="Undefined"
            }
        default:
            CalcScreen.text="Error"
        }
        
    }
    @IBAction func CalcClear(_ sender: Any)
    {
        text1=0
        text2=0
        CalcScreen.text=""
    }
      
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
        
}



