//
//  ViewController.swift
//  backgroundVideoTestApp
//
//  Created by James Lea on 7/19/21.
//

import UIKit
import AVKit
import AVFoundation

class ViewController: UIViewController {
    // MARK: - Outlets
    @IBOutlet weak var videoLayer: UIView!
    @IBOutlet weak var starsLabel: UILabel!
    
    // MARK: - Lifecycle
    override func viewDidLoad(){
        super.viewDidLoad()
        
        playVideo()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
//        let player = AVPlayer(url: URL(fileURLWithPath: Bundle.main.path(forResource: "space", ofType: "mp4")!))
        
//        let layer = AVPlayerLayer(player: player)
//        layer.frame = view.bounds
//        view.layer.addSublayer(layer)
//        player.play()
    }
    
    // MARK: - FNs
    func playVideo(){
        guard let path = Bundle.main.path(forResource: "space", ofType: "mp4") else {return}

        let player = AVPlayer(url: URL(fileURLWithPath: path))
        let playerLayer = AVPlayerLayer(player: player)
        playerLayer.frame = view.bounds
        playerLayer.videoGravity = .resizeAspectFill
        view.layer.addSublayer(playerLayer)
        player.volume = 0

        player.play()
    }
    
}//End of class

