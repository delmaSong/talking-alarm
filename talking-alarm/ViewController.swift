//
//  ViewController.swift
//  talking-alarm
//
//  Created by delma on 09/11/2019.
//  Copyright © 2019 delma. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{

  
    @IBOutlet var tableView: UITableView!
    @IBOutlet var switchBtn: UIButton!
    
    var allOnFlag = 0       // 0 : 자유롭게 onoff 1: all on 2: all off
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
    var dataSet = [
             ("08", "10", "알람이름"),
             ("08", "20", "뉴알람"),
             ("08", "30", "울려라")
          ]
        
        lazy var list: [AlarmVO] = {
           var datalist = [AlarmVO]()
            for(hours, minute, name) in self.dataSet{
                let avo = AlarmVO()
                avo.hours = hours
                avo.minute = minute
                avo.name = name
                
                datalist.append(avo)

            }
            return datalist
        }()
    
    @IBAction func addAlarm(_ sender: Any) {
    //화면이동
        if let st = self.storyboard?.instantiateViewController(withIdentifier: "SetAlarmView") as? SetAlarmViewController{
            
            st.modalTransitionStyle = UIModalTransitionStyle.coverVertical
            
            
            self.present(st, animated: true)
        }
        
    }
    
    @IBAction func allOnOff(_ sender: UIButton) {
        if allOnFlag == 0 { //자유롭게 on off
            allOnFlag = 1
        }else if allOnFlag == 1{    //all on
            //모두 켜진 상태면 꺼줌
            allOnFlag = 2
        }else if allOnFlag == 2{    //all off
            //모두 꺼진 상태면 켜줌
            allOnFlag = 1
        }
        tableView.reloadData()
    }
    
    
   
    
    
    
  
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let row = self.list[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "AlarmCell") as! AlarmCell
        cell.hours.text = row.hours
        cell.minute.text = row.minute
        cell.name.text = row.name
        if allOnFlag == 0 { //자유롭게 on off
            
        }else if allOnFlag == 1{    //all on
            cell.switchBtn.isOn = true
        }else if allOnFlag == 2{    //all off
            cell.switchBtn.isOn = false
        }
        return cell
    }
    

}

