//
//  ViewController.swift
//  Xylophone
//

import UIKit
import AVFoundation

var player: AVAudioPlayer?

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    func playSound(noteToPlay:String) {
        guard let url = Bundle.main.url(forResource: noteToPlay, withExtension: "wav") else { return }

        do {
            try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
            try AVAudioSession.sharedInstance().setActive(true)

            player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.mp3.rawValue)

            guard let player = player else { return }

            player.play()

        } catch let error {
            print(error.localizedDescription)
        }
    }
    @IBAction func keyPressed(_ sender: UIButton) {
        sender.alpha = 0.5

        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2 ) {
            sender.alpha = 1.0
        }
        playSound(noteToPlay:sender.currentTitle!);
    }
    

}

