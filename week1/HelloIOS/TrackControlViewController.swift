//
//  TrackControlViewController.swift
//  HelloIOS
//
//  Created by Meg Grasse on 3/30/16.
//  Copyright © 2016 Meg Grasse. All rights reserved.
//

import UIKit
import AVFoundation

class TrackControlViewController: UIViewController {

    var currentTrack : Track?
    var image1 : UIImage?
    var player : AVAudioPlayer?
    @IBOutlet weak var guestImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let filename = currentTrack!.photo_filename {
            image1 = UIImage(named: filename)
            guestImage.image = image1
        }

        do {
            player = try AVAudioPlayer(contentsOfURL: currentTrack!.url)
        } catch {
            //catch error
        }
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func playButton(sender: UIButton) {
        player!.play()
    }

    @IBAction func pauseButton(sender: AnyObject) {
        player!.pause()
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
