//
//  ViewController.swift
//  xylophone1722
//
//  Created by shaik sadaf patel on 15/12/23.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func keyPressed(_ sender: UIButton) {
        print("Start")

                UIView.animate(withDuration: 0.2) {
                    sender.alpha = 0.5
                }

                DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                    self.playSound(note: sender.currentTitle!)

                    sender.alpha = 1.0

                    print("End")
                }
            }

            func playSound(note: String) {
                guard let url = Bundle.main.url(forResource: note, withExtension: "wav") else {
                    print("Sound file not found for \(note).")
                    return
                }

                do {
                    player = try AVAudioPlayer(contentsOf: url)
                    player.play()
                } catch let error {
                    print("Error creating AVAudioPlayer: \(error.localizedDescription)")
                }
            }
        }

