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
    
    var timer = Timer()
    var time = 2
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.darkGray
        
        
        
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
                timerLbl.text = "00:0\(time)"
            } else {
                timerLbl.text = "00:\(time)"
            }
        } else {
            goTo(view: "serie2")
        }
    }
    
    func goTo(view : String)
    {
        let main = UIStoryboard(name: "Main", bundle: nil)
        let second = main.instantiateViewController(withIdentifier: view)
        
        self.present(second,animated:true,completion:nil)
    }
}
