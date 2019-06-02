//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
//import AudioToolbox
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate{
    
    var audioPlayer : AVAudioPlayer!
    
    let sounds = ["note1", "note2","note3","note4","note5","note6","note7"]
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }



    @IBAction func notePressed(_ sender: UIButton) {
        playSound(tag: sender.tag)
    }
    
    func playSound(tag : Int){
        /*if let soundURL = Bundle.main.url(forResource: sounds[se der.tag-1], withExtension: "wav"){
         
         var mySound : SystemSoundID = 0
         AudioServicesCreateSystemSoundID(soundURL as CFURL, &mySound)
         AudioServicesPlaySystemSound(mySound)
         }*/
        let soundURL = Bundle.main.url(forResource: sounds[tag-1], withExtension: "wav")
        do{
            audioPlayer = try AVAudioPlayer(contentsOf: soundURL!)
        }
        catch{
            print(error)
        }
        audioPlayer.play()
    }

}

