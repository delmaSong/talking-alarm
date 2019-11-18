//
//  SetAlarmViewController.swift
//  talking-alarm
//
//  Created by delma on 09/11/2019.
//  Copyright © 2019 delma. All rights reserved.
//

import Foundation
import UIKit

class SetAlarmViewController : UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
  
    
   
    
    @IBOutlet var timePicker: UIPickerView!
    @IBOutlet var minutePicker: UIPickerView!
    
    
    @IBOutlet var mon: UIButton!
    @IBOutlet var tue: UIButton!
    @IBOutlet var wed: UIButton!
    @IBOutlet var thu: UIButton!
    @IBOutlet var fri: UIButton!
    @IBOutlet var sat: UIButton!
    @IBOutlet var sun: UIButton!
    
   var monFlag = false
    var tueFlag = false
    var wedFlag = false
    var thuFlag = false
    var friFlag = false
    var satFlag = false
    var sunFlag = false

    
    let timeList = ["00", "01", "02", "03",
                     "04", "05", "06", "07",
                     "08", "09", "10", "11",
                     "12", "13", "14", "15",
                     "16", "17", "18", "19",
                     "20", "21", "22", "23"]
    
    let minuteList = ["00", "01", "02", "03", "04",
                      "05", "06", "07","08", "09",
                        "10", "11","12", "13", "14",
                        "15","16", "17", "18", "19",
                        "20", "21", "22", "23","24",
                        "25", "26", "27", "28", "29",
                        "30", "31","32", "33", "34",
                        "35","36", "37", "38", "39",
                        "40", "41", "42", "43","44",
                        "45", "46", "47","48", "49",
                        "50", "51","52", "53", "54",
                        "55","56", "57", "58", "59"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        timePicker.delegate = self
        timePicker.dataSource = self
        minutePicker.delegate = self
        minutePicker.dataSource = self
    }
    
    @IBAction func goBack(_ sender: Any) {
        self.dismiss(animated: true)
    }
    
    @IBAction func selectMon(_ sender: Any) {
        if !monFlag{
            mon.setTitleColor(.black, for: .normal)
        }else{
            mon.setTitleColor(.gray, for: .normal)
        }
    }
    
    @IBAction func selectTue(_ sender: Any) {
        if !tueFlag{
             tue.setTitleColor(.black, for: .normal)
       }else{
           tue.setTitleColor(.gray, for: .normal)
       }
    }
    @IBAction func selectWed(_ sender: Any) {
        if !wedFlag{
             wed.setTitleColor(.black, for: .normal)
        }else{
            wed.setTitleColor(.gray, for: .normal)
        }
    }
    @IBAction func selectThu(_ sender: Any) {
        if !thuFlag{
            thu.setTitleColor(.black, for: .normal)
        }else{
            thu.setTitleColor(.gray, for: .normal)
        }
    }
    
    @IBAction func selectFri(_ sender: Any) {
        if !friFlag{
            fri.setTitleColor(.black, for: .normal)
        }else{
            fri.setTitleColor(.gray, for: .normal)
        }
    }
    @IBAction func selectSat(_ sender: Any) {
        if !satFlag{
            sat.setTitleColor(.black, for: .normal)
        }else{
            sat.setTitleColor(.gray, for: .normal)
        }
    }
    
    @IBAction func selectSun(_ sender: Any) {
        if !sunFlag{
            sun.setTitleColor(.black, for: .normal)
        }else{
            sun.setTitleColor(.gray, for: .normal)
        }
    }
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
          return 1
      }
      
      func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if pickerView == timePicker{
            return self.timeList.count
        }else if pickerView == minutePicker {
            return self.minuteList.count
        }
        return 1
      }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
          if pickerView == timePicker{
                  return self.timeList[row]
              }else if pickerView == minutePicker {
                  return self.minuteList[row]
              }
        return ""
    }
}
