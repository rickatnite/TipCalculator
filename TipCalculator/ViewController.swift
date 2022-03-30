//
//  ViewController.swift
//  TipCalculator
//
//  Created by E Roche on 3/29/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billInput: UITextField!
    @IBOutlet weak var outputTipTotal: UILabel!
    
    @IBAction func button15(_ sender: Any) {
        let bill = Double(billInput.text!)!
        let tip15 = bill * 0.15
        let total15 = bill + tip15
        let output = "Tip: $\(tip15), Total: $\(total15)"
        outputTipTotal.text = output
    }
    
    @IBAction func button18(_ sender: Any) {
        let bill = Double(billInput.text!)!
        let tip18 = bill * 0.18
        let total18 = bill + tip18
        let output = "Tip: $\(tip18), Total: $\(total18)"
        outputTipTotal.text = output
    }
    
    @IBAction func button20(_ sender: Any) {
        let bill = Double(billInput.text!)!
        let tip20 = bill * 0.2
        let total20 = bill + tip20
        let output = "Tip: $\(tip20), Total: $\(total20)"
        outputTipTotal.text = output
    }
    
    @IBOutlet weak var sliderValue: UISlider!
    @IBOutlet weak var tipAmount: UILabel!
    
    @IBAction func tipSlider(_ sender: Any) {
        let bill = Float(billInput.text!)
        let tip = round((bill! * sliderValue.value) * 100) / 100.00
        let tipAmt = Int(sliderValue.value * 100)
        let total = round((bill! + tip) * 100) / 100.00
        let output = "Tip: $\(tip), Total: $\(total)"
        outputTipTotal.text = output
        tipAmount.text = "\(tipAmt)%"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

}

