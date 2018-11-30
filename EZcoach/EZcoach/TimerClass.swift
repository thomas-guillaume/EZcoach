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
    
    
    var serieNb:Int!
    var seconds = 3
    var isTimerRunning = false
    var timer = Timer()
    
    
    
    
    
    @objc func fireTimer() {
        if(seconds > 0)
        {
            seconds -= 1     //This will decrement(count down)the seconds.
            timerLbl.text = "\(seconds)" //This will update the label.
        }
        else
        {
            if(serieNb < 4)
            {
                
                serieNb += 1
                UserDefaults.standard.set(serieNb, forKey: "serie")
                goTo(view: "serie"+String(serieNb))
            }
            else
            {
                serieNb = 1
                UserDefaults.standard.set(serieNb, forKey: "serie")
            }
        }
    }
    
    
    func goTo(view : String)
    {
        let main = UIStoryboard(name: "Main", bundle: nil    )
        let second = main.instantiateViewController(withIdentifier: view)
        
        self.present(second,animated:true,completion:nil)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let nb: Int = UserDefaults.standard.object(forKey : "serie") as? Int   {
            serieNb = nb
        } else {
            serieNb = 1
        }
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
