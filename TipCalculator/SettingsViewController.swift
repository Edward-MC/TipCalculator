//
//  SettingsViewController.swift
//  TipCalculator
//
//  Created by 陈萌 on 1/26/22.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var TipOneSetting: UITextField!
    @IBOutlet weak var TipTwoSetting: UITextField!
    @IBOutlet weak var TipThreeSetting: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.title = "Tip Calculator"
        
        
    }
    
    
    @IBAction func SetTipOne(_ sender: Any) {
        //Get the Value of the Filed 1 in String Form
        var TipOneStr = TipOneSetting.text!
        
        //Remove the "%" in the End, and Transfer to Int
        TipOneStr.remove(at: TipOneStr.index(before: TipOneStr.endIndex))
        let TipOne = Int(TipOneStr)
        
        
        //Restore the Value in the UserDefault
        let defaults = UserDefaults.standard
        defaults.set(TipOne, forKey: "TipOne")
        
        defaults.synchronize()
    }
    
    
    @IBAction func SetTipTwo(_ sender: Any) {
        //Get the Value of the Filed 2 in String Form
        var TipTwoStr = TipTwoSetting.text!
        
        //Remove the "%" in the End, and Transfer to Double
        TipTwoStr.remove(at: TipTwoStr.index(before: TipTwoStr.endIndex))
        let TipTwo = Int(TipTwoStr)
        
        
        //Restore the Value in the UserDefault
        let defaults = UserDefaults.standard
        defaults.set(TipTwo, forKey: "TipTwo")
        
        defaults.synchronize()
    }
    
    @IBAction func SetTipThree(_ sender: Any) {
        //Get the Value of the Filed 2 in String Form
        var TipThreeStr = TipThreeSetting.text!
        
        //Remove the "%" in the End, and Transfer to Double
        TipThreeStr.remove(at: TipThreeStr.index(before: TipThreeStr.endIndex))
        let TipThree = Int(TipThreeStr)
        
        //Restore the Value in the UserDefault
        let defaults = UserDefaults.standard
        defaults.set(TipThree, forKey: "TipThree")
        
        defaults.synchronize()
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
