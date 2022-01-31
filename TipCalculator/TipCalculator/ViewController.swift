//
//  ViewController.swift
//  TipCalculator
//
//  Created by 陈萌 on 1/25/22.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!

    @IBOutlet weak var partySizeControl: UIStepper!
    
    @IBOutlet weak var partySize: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        PartySize.text = PartySizeControl.value.description
    }
    
    
    @IBAction func calculateTip(_ sender: Any) {
        
        // Here text! mean we know that variable text has the
        //value we want, so we force to take the value out
        // ?? is used to set the default value
        let bill = Double(billAmountTextField.text!) ?? 0
    
//        let tipPercentages = [0.1, 0.15, 0.2]
        let defaults = UserDefaults.standard
        var TipOne = Double(defaults.integer(forKey: "TipOne"))
        var TipTwo = Double(defaults.integer(forKey: "TipTwo"))
        var TipThree = Double(defaults.integer(forKey: "TipThree"))
        TipOne = TipOne / 100
        TipTwo = TipTwo / 100
        TipThree = TipThree / 100
        let tipPercentages: [Double] = [TipOne, TipTwo, TipThree]
        
        //Get Tip with Percentage
        let tip = bill *
        tipPercentages[tipControl.selectedSegmentIndex]
        
        //Get Total Amount
        let total = Double(bill + tip)
        
        //Update Tip Amount Label
        tipAmountLabel.text = String(format: "$%.2f", tip)
        
        //Update Total Amount
        totalLabel.text = String(format: "$%.2f", total)
        
        //Auto Change the Width to Fit the Random Size of Number
        totalLabel.sizeToFit()
        tipAmountLabel.sizeToFit()
        
    }
    
    
//    @IBAction func partySizeController(_ sender: Any) {
//        print(partySizeControl.value)
//        partySize.text = String(partySizeControl.value)
//    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
//        print("view will appear")
        // This is a good place to retrieve the default tip percentage from UserDefaults
        // and use it to update the tip amount
        let defaults = UserDefaults.standard

        let TipOne = defaults.integer(forKey: "TipOne") ?? 10
        let TipTwo = defaults.integer(forKey: "TipTwo") ?? 15
//        var TipTwo: Int {
//            defaults.integer(forKey: "TipTwo") ?? 15
//        }
        let TipThree = defaults.integer(forKey: "TipThree") ?? 20

        tipControl.setTitle(String(TipOne) + "%", forSegmentAt: 0)
        tipControl.setTitle(String(TipTwo) + "%", forSegmentAt: 1)
        tipControl.setTitle(String(TipThree) + "%", forSegmentAt: 2)
        
//        print(TipOne)
//        print(TipTwo)
//        print(TipThree)
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("view did appear")
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("view will disappear")
        
        
    }

    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("view did disappear")
    }
    

}

