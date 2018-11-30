//
//  EndTrain.swift
//  EZcoach
//
//  Created by Mathieu on 30/11/2018.
//  Copyright © 2018 Thomas Guillaume. All rights reserved.
//

import UIKit

class EndTrain: UIViewController {

    var resultTraining:String!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func veryHard(_ sender: Any) {
        // Notify the user that his daily training is ended
        let alertController = UIAlertController(title: "Great !", message: "Your daily training is ended, come back tomorrow for a new one.", preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: {action in self.goTo(view: "home")}))
        present(alertController, animated: true, completion: nil)
    }
    
    @IBAction func hard(_ sender: Any) {
        // Notify the user that his daily training is ended
        let alertController = UIAlertController(title: "Great !", message: "Your daily training is ended, come back tomorrow for a new one.", preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: {action in self.goTo(view: "home")}))
        present(alertController, animated: true, completion: nil)
    }
    @IBAction func normal(_ sender: Any) {
        // Notify the user that his daily training is ended
        let alertController = UIAlertController(title: "Great !", message: "Your daily training is ended, come back tomorrow for a new one.", preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: {action in self.goTo(view: "home")}))
        present(alertController, animated: true, completion: nil)
    }
    @IBAction func easy(_ sender: Any) {
        // Notify the user that his daily training is ended
        let alertController = UIAlertController(title: "Great !", message: "Your daily training is ended, come back tomorrow for a new one.", preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: {action in self.goTo(view: "home")}))
        present(alertController, animated: true, completion: nil)
    }
    @IBAction func veryEasy(_ sender: Any) {
        // Notify the user that his daily training is ended
        let alertController = UIAlertController(title: "Great !", message: "Your daily training is ended, come back tomorrow for a new one.", preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: {action in self.goTo(view: "home")}))
        present(alertController, animated: true, completion: nil)
    }
    
    
    
    
    func goTo(view : String)
    {
        let main = UIStoryboard(name: "Main", bundle: nil)
        let second = main.instantiateViewController(withIdentifier: view)
        
        self.present(second,animated:true,completion:nil)
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
