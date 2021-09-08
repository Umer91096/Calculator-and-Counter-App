//
//  ViewController.swift
//  FirstAPP
//
//  Created by Umer Abdullah on 07/09/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Add: UIButton!
    @IBOutlet weak var Subtract: UIButton!
    @IBOutlet weak var Label: UILabel!
  
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func TouchUpInside(_ sender: Any) {
        
        count += 1
        Label.text = String(count)  //adder
    }
    
    @IBAction func Subtract(_ sender: Any) {
        
        count -= 1
        Label.text = String(count)  //subtractor
    }
    
    
}

