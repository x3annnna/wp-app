//
//  ViewController.swift
//  Washington Place Experience
//
//  Created by Analyn Delos Santos on 12/4/17.
//  Copyright © 2017 Analyn Delos Santos. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation

class ViewController: UIViewController {


    @IBAction func videoButton(_ sender: Any) {
        if let path = Bundle.main.path(forResource: "Nancy_Quinn", ofType: "mp4") {
            let video = AVPlayer(url: URL(fileURLWithPath: path))
            let videoPlayer = AVPlayerViewController()
            let playerViewController = AVPlayerViewController()
            playerViewController.player = video
            present(playerViewController, animated: true, completion: {
                video.play()
            })
        }
        /*if let path = Bundle.main.path(forResource: "video", ofType: "mp4")
        {
            let video = AVPlayer(url: URL(fileURLWithPath: path))
            let videoPlayer = AVPlayerViewController()
            videoPlayer.player = video
            
            present(videoPlayer, animated: true, completion: {
                video.play()
            })
        }*/
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
