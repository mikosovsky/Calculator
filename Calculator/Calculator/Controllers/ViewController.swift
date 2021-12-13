//
//  ViewController.swift
//  Calculator
//
//  Created by Mikołaj Dawczyk on 13/12/2021.
//

import UIKit

class ViewController: UIViewController {

    let calc = Calc(value: "0")
    
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        resultLabel.text = "0"

    }

    @IBAction func numberInsert(_ sender: UIButton) {
        let newNumber = sender.titleLabel!.text!
        
        resultLabel.text = calc.insertNumber(newValue: newNumber)
    }
    
    @IBAction func changingSign(_ sender: UIButton) {
        resultLabel.text = calc.changeSign()
    }
    
    @IBAction func addingDot(_ sender: UIButton) {
        resultLabel.text = calc.insertDot()
    }
    
    @IBAction func clearLabel(_ sender: UIButton) {
        resultLabel.text = calc.setValueAsZero()
    }
    
    @IBAction func changingOnPercent(_ sender: UIButton) {
        resultLabel.text = calc.goOnPercents()
    }

    @IBAction func deviding(_ sender: UIButton) {
        calc.devide()
    }
    
    @IBAction func multiplying(_ sender: UIButton) {
        calc.multiply()
    }
    
    @IBAction func differencing(_ sender: UIButton) {
        calc.difference()
    }
    
    @IBAction func adding(_ sender: UIButton) {
        calc.add()
    }
    
    @IBAction func equaling(_ sender: UIButton) {
        resultLabel.text = calc.equation()
    }
}

