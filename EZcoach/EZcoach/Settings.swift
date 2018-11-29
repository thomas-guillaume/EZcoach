//
//  Settings.swift
//  EZcoach
//
//  Created by Mathieu on 26/11/2018.
//  Copyright © 2018 Thomas Guillaume. All rights reserved.
//

import UIKit

class Settings: UIViewController {

    @IBOutlet weak var notifications: UISwitch!
    @IBOutlet weak var timePicker: UIDatePicker!
    
    override func viewDidLoad() {
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
    
    @IBAction func SetNotifications(_ sender: UISwitch) {
        if notifications.isOn {
            timePicker.isHidden = false
        } else {
            timePicker.isHidden = true
        }
    }
    
    
    // Schedule notifications
    @IBAction func notification_time(_ sender: UIDatePicker) {
       
    }
    
    
    

}
