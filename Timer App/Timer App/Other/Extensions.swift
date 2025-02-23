//
//  Extensions.swift
//  Timer App
//
//  Created by Victoria Samsonova on 20.02.25.
//

import Foundation

extension Int {
    var asTimestamp: String {
        let hour = self / 3600
        let minute = self / 60 % 60
        let second = self % 60
        
        return String(format: "%02i:%02i:%02i", hour, minute, second)
    }
}
