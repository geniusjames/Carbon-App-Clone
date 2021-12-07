//
//  CountryPickerViewController.swift
//  CarbonMockApp
//
//  Created by Geniusjames on 05/12/2021.
//

import Foundation
import UIKit
class CountryPickerViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
   let countryCodes = ["+234", "+1", "+44", "+33", "+233"]
    let countryNames = ["nigeria", "usa", "uk", "france", "ghana"]
    
   override func viewDidLoad() {
      super.viewDidLoad()
      let UIPicker: UIPickerView = UIPickerView()
      UIPicker.delegate = self as UIPickerViewDelegate
      UIPicker.dataSource = self as UIPickerViewDataSource
      self.view.addSubview(UIPicker)
      UIPicker.center = self.view.center
   }
   func numberOfComponents(in pickerView: UIPickerView) -> Int {
      return 1
   }
   func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
      return countryCodes.count
   }
   func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
      let row = countryCodes[row]
      return row
   }
}
