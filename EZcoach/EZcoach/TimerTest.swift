//
//  TimerTest.swift
//  EZcoach
//
//  Created by Thomas Guillaume on 30/11/2018.
//  Copyright © 2018 Thomas Guillaume. All rights reserved.
//

import AVFoundation
import UIKit

class TimerTest: UIViewController {

    var timer = Timer()
    var time = 60
    var player: AVAudioPlayer!
    
    @IBOutlet weak var timerLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor.darkGray
        
        // Verify if sound activated in the settings before playing a sound
        if let x = UserDefaults.standard.object(forKey : "sound") as? Bool {
            if x == true {
                // Tweet sound.
                let systemSoundID: SystemSoundID = 1016
                
                // Play the sound
                AudioServicesPlaySystemSound (systemSoundID)
            }
        }
        
        
        // Start the timer
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(fireTimer), userInfo: nil, repeats: true)
    }
    

    @objc func fireTimer() {
        if(time > 0)
        {
            //This will decrement(count down)the seconds.
            time -= 1
            
            //This will update the label.
            if time < 10 {
                timerLabel.text = "00:0\(time)"
            } else {
                timerLabel.text = "00:\(time)"
            }
        } else {
            // Play a sound
            if let x = UserDefaults.standard.object(forKey : "sound") as? Bool {
                if x == true {
                    // Tweet sound.
                    let systemSoundID: SystemSoundID = 1016
                    
                    // Play the sound
                    AudioServicesPlaySystemSound (systemSoundID)
                }
            }
            goTo(view: "endTest")
        }
    }
    
    
    func goTo(view : String)
    {
        let main = UIStoryboard(name: "Main", bundle: nil)
        let second = main.instantiateViewController(withIdentifier: view)
        
        self.present(second,animated:true,completion:nil)
    }

}
