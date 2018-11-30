//
//  VideoController.swift
//  EZcoach
//
//  Created by Thomas Guillaume on 30/11/2018.
//  Copyright © 2018 Thomas Guillaume. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation

class VideoController: UIViewController {
    
    var playerViewController = AVPlayerViewController()
    var playerView = AVPlayer()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        let fileURL = NSURL(fileURLWithPath: "./pushups.mp4")
        playerView = AVPlayer(url: fileURL as URL)
        playerViewController.player = playerView
        
        self.present(playerViewController, animated: true) {
            self.playerViewController.player?.play()
        }
    }
}
