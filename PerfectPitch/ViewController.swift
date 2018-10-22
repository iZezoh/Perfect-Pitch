//
//  ViewController.swift
//  PerfectPitch
//
//  Created by Ziyad Alamri on 22/10/2018.
//  Copyright © 2018 Ziyad Alamri. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var progress: UILabel!
    @IBOutlet weak var recordButton: UIButton!
    @IBOutlet weak var stopRecordingButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        stopRecordingButton.isEnabled = false
        progress.text = "Press the Mic to record"
    }

    @IBAction func recordPressed(_ sender: Any) {
        progress.text = "Recording . . ."
        stopRecordingButton.isEnabled = true
        recordButton.isEnabled = false
    }
    
    
    @IBAction func stopPressed(_ sender: Any) {
        progress.text = "Stopped"
        recordButton.isEnabled = true
        stopRecordingButton.isEnabled = false
    }
    
    
}

