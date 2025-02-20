//
//  TimerViewModel.swift
//  Timer App
//
//  Created by Victoria Samsonova on 20.02.25.
//

import Foundation

class TimerViewModel: ObservableObject {
    @Published var selectedHoursAmount = 10
    @Published var selectedMinutesAmount = 10
    @Published var selectedSecondsAmount = 10
    
    let hoursRange = 0...23
    let minutesRange = 0...59
    let secondsRange = 0...59
}
