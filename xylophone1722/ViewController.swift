//
//  ViewController.swift
//  xylophone1722
//
//  Created by shaik sadaf patel on 15/12/23.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate{
    var player: AVAudioPlayer!
    var soundsArray = ["A","C","B","F","G","E","D"]
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
    }
    
    @IBAction func keyPressed(_ sender: UIButton) {
        var selectSOund = soundsArray[(sender.tag)]
        playingSOund
