//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer?

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func playSound(key: String) {
        guard let url = Bundle.main.url(forResource: key, withExtension: "wav") else { return }
        player = try! AVAudioPlayer(contentsOf: url)
        guard let player = player else { return }
        player.play()
    }

    @IBAction func keyPressed(_ sender: UIButton) {
        playSound(key: sender.currentTitle!)
    }
}

