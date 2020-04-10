//
//  ViewController.swift
//  MultipleEx
//
//  Created by Olivia on 4/10/20.
//  Copyright © 2020 Olivia. All rights reserved.
//

import UIKit

// include in the initial ViewController above ViewController declaration below import UIKIt
class Global {
    var nameVar = String()
    var switchVar = String()
    var sliderVar:Int = 0
    var pickerVar = String()
}
let global = Global()
        

class ViewController: UIViewController {

    @IBOutlet weak var theName: UILabel!
    
    @IBOutlet weak var theSwitch: UILabel!
    
    @IBOutlet weak var theSlider: UILabel!
    
    @IBOutlet weak var thePicker: UILabel!
    
    
    @IBOutlet weak var myName: UITextField!
    
    //include the code within the brackets for the Submit button
    
    @IBAction func myButton(_ sender: Any) {
        global.nameVar = myName.text!
        theName.text = "Name: " + global.nameVar
        myName.resignFirstResponder()
    }
    
    
 // create viewWillAppear function to display the result
 override func viewWillAppear(_ animated: Bool){
 theSwitch.text = "Switch: \(global.switchVar)"
    theSlider.text = "Slider: \(global.sliderVar)"
    thePicker.text = "Picker: \(global.pickerVar)"
 }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

