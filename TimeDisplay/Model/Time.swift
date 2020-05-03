//
//  Date.swift
//  TimeDisplay
//
//  Created by student on 03.05.20.
//  Copyright © 2020 MaaxGr. All rights reserved.
//

import UIKit

public struct Time {
    let hour: Int
    let minute: Int
    let second: Int
    
    // Stunde mit zwei Stellen
    var hour2Digits: String {
        get {
            return pretendZeroIfLowerThan10(number: hour)
        }
    }

    // Minute mit zwei Stellen
    var minute2Digits: String {
        get {
            return pretendZeroIfLowerThan10(number: minute)
        }
    }
    
    // Sekunde mit zwei Stellen
    var second2Digits: String {
        get {
            return pretendZeroIfLowerThan10(number: second)
        }
    }
}

private func pretendZeroIfLowerThan10(number: Int) -> String {
    return number < 10 ? "0\(number)" : String(number)
}
