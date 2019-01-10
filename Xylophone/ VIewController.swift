//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController , AVAudioPlayerDelegate{
    var audioPlayer:AVAudioPlayer!
    let trackList = ["note1","note2","note3","note4","note5","note6","note7"]

    override func viewDidLoad() {
        super.viewDidLoad()
    }



    @IBAction func notePressed(_ sender: UIButton) {
        playSound(ofTrack: trackList[sender.tag - 1])
    }
    
    func playSound(ofTrack track :String){
        
        let Url = Bundle.main.url(forResource: track, withExtension: "wav")
        
        do{
             audioPlayer = try AVAudioPlayer(contentsOf: Url!)
        }catch{
            print(error)
        }
        
        audioPlayer.play()
    }

}

