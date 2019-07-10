//
//  ViewController.swift
//  AWPlayerRadio
//
//  Created by Денис Андреев on 7/10/19.
//  Copyright © 2019 Денис Андреев. All rights reserved.
//

import UIKit
import AVFoundation
import Alamofire
import AVKit

final class ViewController: UIViewController {
    
    let myUrl = URL(string: "https://audd.tech/example1.mp3")
    
    override func viewDidLoad() {
//        videoPlay()
        let button = UIButton(frame: CGRect(x: 100, y: 100, width: 100, height: 100))
        button.backgroundColor = .red
        button.addTarget(self, action: #selector(hekllo), for: .touchUpInside)
        self.view.addSubview(button)
        
    }
    
    @objc func hekllo(){
        appleVideo()
    }
    
    private func videoPlay(){
        let videoUrl = URL(string: "https://clips.vorwaerts-gmbh.de/big_buck_bunny.mp4")!

        let player = AVPlayer(url: videoUrl)
        let layerPlayer = AVPlayerLayer(player: player)
        layerPlayer.frame = self.view.bounds
        self.view.layer.addSublayer(layerPlayer)
        player.play()
        
//        print("current time = \(player.currentTime())")
        
    }
    
    
    private func appleVideo(){
        guard let url = URL(string: "https://clips.vorwaerts-gmbh.de/big_buck_bunny.mp4") else {return}
        let player = AVPlayer(url: url)
        let controller = AVPlayerViewController()
        controller.player = player
        present(controller, animated: true) {
            player.play()
        }
        
    }
    
}
