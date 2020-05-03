//
//  ViewController.swift
//  TimeDisplay
//
//  Created by student on 03.05.20.
//  Copyright © 2020 MaaxGr. All rights reserved.
//

import UIKit

class TimerViewController: UIViewController {

    // UI Komponenten
    @IBOutlet weak var lblTime: UILabel!
    
    // Fachlicher Controller
    private let controller = TimerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Setzt Callback in TimerController
        controller.onTimeUpdate() { text in
            self.updateTime(timeString: text)
        }
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        // Timer starten
        controller.startTimer()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        // Timer beenden
        controller.stopTimer()
    }
    
    // Updatet Uhrzeit auf UI
    func updateTime(timeString: String) {
        lblTime.text = timeString
    }

}

