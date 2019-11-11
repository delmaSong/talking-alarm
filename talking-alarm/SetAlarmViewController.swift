//
//  SetAlarmViewController.swift
//  talking-alarm
//
//  Created by delma on 09/11/2019.
//  Copyright © 2019 delma. All rights reserved.
//

import Foundation
import UIKit

class SetAlarmViewController : UIViewController {
   
    
    
    
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

    override func viewDidLoad() {
        super.viewDidLoad()
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
    
}
