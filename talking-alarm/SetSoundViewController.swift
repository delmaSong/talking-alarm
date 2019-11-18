//
//  SetSoundViewController.swift
//  talking-alarm
//
//  Created by delma on 18/11/2019.
//  Copyright © 2019 delma. All rights reserved.
//

import UIKit
import AudioToolbox

class SetSoundViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    @IBOutlet var tableView: UITableView!
    
    var soundList: [String] = []
    let soundDirectory = "/System/Library/Audio/UISounds/New"
    
    override func viewDidLoad() {
        tableView.delegate = self
        tableView.dataSource = self
        
        soundList = FileManager.default.enumerator(atPath: soundDirectory)!.map{
            String(describing: $0)}
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        soundList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SoundCell") as! SoundCell
        cell.name.text = "\(soundList[indexPath.row])"
        
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
         let soundFileName = soundList[indexPath.row]
               let fullyQualifiedName = soundDirectory + "/" + soundFileName
               let url = URL(fileURLWithPath: fullyQualifiedName)
               var soundId: SystemSoundID = 0
        AudioServicesCreateSystemSoundID(url as CFURL, &soundId)
        AudioServicesPlaySystemSoundWithCompletion(soundId, {
            print("AudioServicesPlaySystemSoundWithCompletion")
            AudioServicesDisposeSystemSoundID(soundId)
        })
    }
}
