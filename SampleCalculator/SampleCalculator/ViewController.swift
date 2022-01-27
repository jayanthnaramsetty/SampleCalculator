//
//  ViewController.swift
//  SampleCalculator
//
//  Created by Naramsetty,Jayanth on 1/27/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var DisplayLabel: UILabel!
   
    var operand1:Double = -1.1;
    var operand2:Double = -1.1;
    var calcoperator:Character = " ";
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func button1(_ sender: Any) {        DisplayLabel.text = DisplayLabel.text! + "1"
        if operand1 == -1.1 {
            operand1 = 1
    }
        else{
            operand2 = 2
        }
    }
    
    @IBAction func button2(_ sender: Any) {
        DisplayLabel.text = DisplayLabel.text! + "2"
        if operand2 == -1.1 {
            operand2 = 2
    }
        else{
            operand1 = 2
        }
    }
    
    @IBAction func buttonplus(_ sender: Any) {
        DisplayLabel.text = DisplayLabel.text! + "+"
        if calcoperator == " "{
            calcoperator = "+"
        }
    }
    
    @IBAction func buttonequals(_ sender: Any) {
        DisplayLabel.text = DisplayLabel.text! + "="
        if calcoperator == "+"{
            DisplayLabel.text = "\(operand1 + operand2)"
        }
    
    
}

}
