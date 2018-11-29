//
//  TimerClass.swift
//  EZcoach
//
//  Created by Mathieu on 29/11/2018.
//  Copyright © 2018 Thomas Guillaume. All rights reserved.
//

import UIKit

class TimerClass: UIViewController {
    
    
    @IBOutlet weak var timerLbl: UILabel!
    
    var seconds = 60
    var isTimerRunning = false
    var timer = Timer()
    
    
    
    @objc func fireTimer() {
        print("Timer fired!")
        seconds -= 1     //This will decrement(count down)the seconds.
        timerLbl.text = "\(seconds)" //This will update the label.
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(fireTimer), userInfo: nil, repeats: true)
        
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
