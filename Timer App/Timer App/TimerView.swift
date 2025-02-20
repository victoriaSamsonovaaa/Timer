//
//  TimerView.swift
//  Timer App
//
//  Created by Victoria Samsonova on 20.02.25.
//

import SwiftUI

struct TimerView: View {
    @StateObject private var model = TimerViewModel()
    
    var body: some View {
        HStack {
            TimePickerView(title: "hours", range: model.hoursRange, binding: $model.selectedHoursAmount)
            TimePickerView(title: "min", range: model.minutesRange, binding: $model.selectedMinutesAmount)
            TimePickerView(title: "sec", range: model.secondsRange, binding: $model.selectedSecondsAmount)
        }
        .padding(.all, 32)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.black)
        .foregroundStyle(.white)
    }
}

#Preview {
    TimerView()
}
