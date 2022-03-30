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
        var bill:Double! = nil
        bill = Double(billInput.text ?? "0")
        if bill != nil {
            let tip15 = round((bill! * 0.15) * 100) / 100.00
            let total15 = round((bill! + tip15) * 100) / 100.00
            let output = "Tip: $\(tip15), Total: $\(total15)"
            outputTipTotal.text = output
        }
    }
    
    @IBAction func button18(_ sender: Any) {
        var bill:Double! = nil
        bill = Double(billInput.text ?? "0")
        if bill != nil {
            let tip18 = round((bill * 0.18) * 100) / 100.00
            let total18 = round((bill + tip18) * 100) / 100.00
            let output = "Tip: $\(tip18), Total: $\(total18)"
            outputTipTotal.text = output
        }
    }
    
    @IBAction func button20(_ sender: Any) {
        var bill:Double! = nil
        bill = Double(billInput.text ?? "0")
        if bill != nil {
            let tip20 = round((bill * 0.2) * 100) / 100.00
            let total20 = round((bill + tip20) * 100) / 100.00
            let output = "Tip: $\(tip20), Total: $\(total20)"
            outputTipTotal.text = output
        }
    }
    
    @IBOutlet weak var sliderValue: UISlider!
    @IBOutlet weak var tipAmount: UILabel!
    
    @IBAction func tipSlider(_ sender: Any) {
        let bill = Float(billInput.text!)
        if bill != nil {
            let tip = round((bill! * sliderValue.value) * 100) / 100.00
            let tipAmt = Int(sliderValue.value * 100)
            let total = round((bill! + tip) * 100) / 100.00
            let output = "Tip: $\(tip), Total: $\(total)"
            outputTipTotal.text = output
            tipAmount.text = "\(tipAmt)%"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.dismissKeyboard))
        view.addGestureRecognizer(tap)
        // Do any additional setup after loading the view.
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }

}

