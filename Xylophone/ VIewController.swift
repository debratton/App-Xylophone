//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController{
    
    var audioPlayer: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func playSound(sender:Int) {
        print("note\(sender)")
        //Notice, you do not specify folder
        let soundURL = Bundle.main.url(forResource: "note\(sender)", withExtension: "wav")
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: soundURL!)
        } catch {
            print(error.localizedDescription)
        }
        audioPlayer.play()
    }

    @IBAction func notePressed(_ sender: UIButton) {
        playSound(sender: sender.tag)
    }
}

