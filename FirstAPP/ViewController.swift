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
        print("viewDid Load")
        // Do any additional setup after loading the view.
    }

    //Adder function
    @IBAction func TouchUpInside(_ sender: Any) {
        
        count += 1
        Label.text = String(count)  //adder
    }
    
    //Subtractor fuction
    @IBAction func Subtract(_ sender: Any) {
        
        count -= 1
        Label.text = String(count)  //subtractor
    }
    
    
    
    @IBAction func onGoButton(_ sender: Any) {
        self.performSegue(withIdentifier: "openCalculator", sender: self)
    }
    
    override func viewDidAppear(_ animated: Bool)
    {
        print("viewDidAppear")
    }
    
    override func viewWillAppear(_ animated: Bool)
    {
        print("viewWillAppear")
    }
    
    override func viewDidDisappear(_ animated: Bool)
    {
        print("viewDidDisappear")
    }
    
    override func viewWillDisappear(_ animated: Bool)
    {
        print("viewWillDisappear")
    }
    
}

