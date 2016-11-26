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

    @IBOutlet weak var btnButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //http://192.168.31.188/xxhhd.mp4
        //http://192.168.31.188/aa.mp3
        
        
        let videoURL = NSURL(string: "http://192.168.31.188/aa.mp3")
        let player = AVPlayer(url: videoURL! as URL)
        let playerLayer = AVPlayerLayer(player: player)
        playerLayer.frame = CGRect(x: 10, y: 50, width: 300, height: 100)
        self.view.layer.addSublayer(playerLayer)
        player.play()
        
        
    }
    

    @IBAction func btndwon(_ sender: Any) {
        
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

