//
//  ViewController.swift
//  Piano
//
//  Created by Alex Lopez on 06/10/2018.
//  Copyright © 2018 Cristian Lopez. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    let soundsArray = ["c1", "c1s", "d1", "d1s", "e1", "f1", "f1s", "g1", "g1s", "a1", "a1s", "b1", "c2"]
    
    var audioPlayer : AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func playSound(_ sender: UIButton) {
        let idkey = sender.tag
        let fileName = soundsArray[idkey-1]
        
        if let soundURL : URL = Bundle.main.url(forResource: fileName, withExtension: "mp3") {
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: soundURL)
            } catch {
                print(error)
            }
            
            audioPlayer.play()
        }
    }
    
}

