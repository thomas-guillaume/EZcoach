//
//  EndTest.swift
//  EZcoach
//
//  Created by Thomas Guillaume on 30/11/2018.
//  Copyright © 2018 Thomas Guillaume. All rights reserved.
//

import UIKit

class EndTest: UIViewController {

    @IBOutlet weak var nbPushUps: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func confirm(_ sender: UIButton) {
        // Save his performance
        if !(nbPushUps.text?.isEmpty)! {
            let nbMax: Int? = Int(self.nbPushUps.text!)
            
            if nbMax == nil {
                // Display an alert
                let alertController = UIAlertController(title: "Input error !", message: "Please enter a number.", preferredStyle: .alert)
                alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                present(alertController, animated: true, completion: nil)
            } else if nbMax! <= 0 {
                // Display an alert
                let alertController = UIAlertController(title: "Input error !", message: "Please enter a positive number.", preferredStyle: .alert)
                alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                present(alertController, animated: true, completion: nil)
            } else {
                UserDefaults.standard.set(nbPushUps.text, forKey: "nbMax")
        
                // Notify the user that his daily training is ready
                let alertController = UIAlertController(title: "Great !", message: "Your daily training is ready.", preferredStyle: .alert)
                alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: {action in self.performSegue(withIdentifier: "backHome", sender: self)}))
                present(alertController, animated: true, completion: nil)
            }
        }
    }
    
    
    func goTo(view : String)
    {
        let main = UIStoryboard(name: "Main", bundle: nil)
        let second = main.instantiateViewController(withIdentifier: view)
        
        self.present(second,animated:true,completion:nil)
    }
    
}
