//
//  TimerTest.swift
//  EZcoach
//
//  Created by Thomas Guillaume on 30/11/2018.
//  Copyright © 2018 Thomas Guillaume. All rights reserved.
//

import UIKit

class TimerTest: UIViewController {

    var timer = Timer()
    var time = 60
    
    @IBOutlet weak var timerLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor.darkGray
        
        // Start the timer
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(fireTimer), userInfo: nil, repeats: true)
    }
    

    @objc func fireTimer() {
        if(time > 0)
        {
            time -= 1
            //This will decrement(count down)the seconds.
            timerLabel.text = "00:\(time)"
            //This will update the label.
        } else {
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
