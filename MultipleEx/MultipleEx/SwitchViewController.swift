//
//  SwitchViewController.swift
//  MultipleEx
//
//  Created by Olivia on 4/10/20.
//  Copyright © 2020 Olivia. All rights reserved.
//

import UIKit

class SwitchViewController: UIViewController {
    
    
    @IBOutlet weak var switchVal: UILabel!
    
    
     // include the code within the brackets for the Switch
    
    @IBAction func mySwitch(_ sender: UISwitch) {
        if sender.isOn {
                 global.switchVar = "on"
              }
              else {
                 global.switchVar = "off"
              }
        switchVal.text = global.switchVar
    }
    
    
    
      // include the code within the brackets in the viewDidLoad function
    override func viewDidLoad() {global.switchVar = "off"
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
