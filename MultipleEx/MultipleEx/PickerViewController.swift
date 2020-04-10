//
//  PickerViewController.swift
//  MultipleEx
//
//  Created by Olivia on 4/10/20.
//  Copyright © 2020 Olivia. All rights reserved.
//

import UIKit

// add the statements to the initial class declaration
class PickerViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate{

    // include array
     let items = ["Item1", "Item2", "Item3", "Item4"]
    
     //initialize a String
       var selection:String!
    
    @IBOutlet weak var pickerVal: UILabel!
    
    
    @IBOutlet weak var picker: UIPickerView!
    
    //add these functions to run picker
    public func numberOfComponents(in pickerView: UIPickerView) -> Int {
            return 1
        }
        
        public func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
            return items.count
        }
        
        func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
            return items[row]
        }
        
        func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
            selection = items[row]
            pickerVal.text = "You selected: " + selection
            global.pickerVar = selection
        }
            
    
   
   override func viewDidLoad() {
          super.viewDidLoad()
    
//add to viewDidLoad
  picker.delegate = self
  picker.dataSource = self
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
