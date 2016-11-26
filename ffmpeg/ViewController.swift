//
//  ViewController.swift
//  ffmpeg
//
//  Created by 陈章 on 16/11/25.
//  Copyright © 2016年 陈章. All rights reserved.
//

import UIKit
import MediaPlayer


class ViewController: UIViewController {


    
    var videoURL:NSURL!
    var player:AVPlayer!
    var playerLayer:AVPlayerLayer!
    
    @IBOutlet weak var btnButton: UIButton!
    
    @IBOutlet weak var btnZT: UIButton!
    
    override func viewDidLoad() {
      
        // Do any additional setup after loading the view, typically from a nib.
        
        
        super.viewDidLoad()
        videoURL = NSURL(string: "http://192.168.31.188/xxhhd.mp4")
        player = AVPlayer(url: videoURL! as URL)
        playerLayer = AVPlayerLayer(player: player)
        playerLayer.frame = self.view.bounds
        
        self.view.layer.addSublayer(playerLayer)
        player.play()
        
        //http://192.168.31.188/xxhhd.mp4
        //http://192.168.31.188/aa.mp3
        
        //self.moviePlayer.player
        
        //self.addNotification
        
 
    }
    @IBAction func btnztdwon(_ sender: Any) {
        
         self.player!.pause()
    }

    @IBAction func btndwon(_ sender: Any) {
        
        self.player!.play()
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

