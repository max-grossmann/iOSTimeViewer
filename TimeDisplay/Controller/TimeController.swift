//
//  TimeController.swift
//  TimeDisplay
//
//  Created by student on 03.05.20.
//  Copyright © 2020 MaaxGr. All rights reserved.
//

import UIKit

class TimeController: NSObject {

    func getCurrentTime() -> Time {
        let date = Date()
        let calendar = Calendar.current
        let hour = calendar.component(.hour, from: date)
        let minute = calendar.component(.minute, from: date)
        let second = calendar.component(.second, from: date)
        
        return Time(hour: hour, minute: minute, second: second)
    }
    
}
