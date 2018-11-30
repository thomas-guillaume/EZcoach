//
//  Settings.swift
//  EZcoach
//
//  Created by Mathieu on 26/11/2018.
//  Copyright © 2018 Thomas Guillaume. All rights reserved.
//

import UIKit
import UserNotifications

class Settings: UIViewController {

    @IBOutlet weak var notifications: UISwitch!
    @IBOutlet weak var timePicker: UIDatePicker!
    @IBOutlet weak var sound: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound, .badge], completionHandler: {didAllow, error in })
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        // Initialize the switch boxes to their saved state
        if let x = UserDefaults.standard.object(forKey : "notifications") as? Bool {
            if x == true {
                notifications.isOn = true
            } else if x == false {
                notifications.isOn = false
                timePicker.isHidden = true
            }
        }
        
        if let x = UserDefaults.standard.object(forKey : "sound") as? Bool {
            if x == true {
                sound.isOn = true
            } else if x == false {
                sound.isOn = false
            }
        }
    }
    
    
    @IBAction func SetNotifications(_ sender: UISwitch) {
        if notifications.isOn {
            // Show the time picker and save the state in the app
            timePicker.isHidden = false
            UserDefaults.standard.set(true, forKey: "notifications")
        } else {
            // Hide the time picker and save the state in the app
            timePicker.isHidden = true
            UserDefaults.standard.set(false, forKey: "notifications")
        }
    }
    
    
    // Schedule notifications
    @IBAction func notification_time(_ sender: UIDatePicker) {
        let content = UNMutableNotificationContent()
        content.title = "Time for your daily training !"
        content.body = "Ready to workout ?"
        content.badge = 1
        
        let interval: Double = timePicker.date.timeIntervalSinceNow
        if interval > 0 {
            let trigger = UNTimeIntervalNotificationTrigger(timeInterval: interval, repeats: false)
            
            let request = UNNotificationRequest(identifier : "timerDone", content: content, trigger: trigger)
            UNUserNotificationCenter.current().add(request,withCompletionHandler: nil)
        }
    }
    
    
    @IBAction func setAppSound(_ sender: UISwitch) {
        if sound.isOn {
            UserDefaults.standard.set(true, forKey: "sound")
        } else {
            UserDefaults.standard.set(false, forKey: "sound")
        }
    }
    

}
