//
//  TimerControlloer.swift
//  TimeDisplay
//
//  Created by student on 03.05.20.
//  Copyright © 2020 MaaxGr. All rights reserved.
//

import UIKit

class TimerController: NSObject {
    
    // Controller der aktuelle Uhrzeit bereitstellen kann
    private let timeController = TimeController()
    
    // Closure, in das formatierte Uhrzeit gepublisht wird
    private var timeUpdateClosure: (_ timeString: String) -> Void = { update in
    }
    
    // Methode, über die ViewController definieren kann, was
    func onTimeUpdate(updateClosure: @escaping (_ timeString: String) -> Void) {
        self.timeUpdateClosure = updateClosure
    }
    
    // Timer Objekt
    var timer: Timer!
    
    // Initialisierung des Timer Objekts
    func startTimer() {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(self.updateCounting), userInfo: nil, repeats: true)
    }
    
    // Timer stoppen
    func stopTimer() {
        timer.invalidate()
    }
    
    //Methode wird jede Sekunde von Timer aufgerufen
    @objc func updateCounting() {
        // Aktuelle Uhrzeit über TimeController holen
        let time = timeController.getCurrentTime()
        
        // In richtiges Format konvertieren
        let formattedTime = "\(time.hour2Digits):\(time.minute2Digits):\(time.second2Digits)"
        
        // Formatiertes Datum in Closure übergeben
        self.timeUpdateClosure(formattedTime)
    }
    
}
