//
//  TimerView.swift
//  Timer App
//
//  Created by Victoria Samsonova on 20.02.25.
//

import SwiftUI

struct TimerView: View {
    @StateObject private var model = TimerViewModel()
    
    var timerControls: some View {
        HStack {
            Button("Cancel") {
                model.state = .cancelled
            }
            .buttonStyle(CancelButtonStyle())
            Spacer()
            switch(model.state) {
            case .cancelled:
                Button("Start") {
                    model.state = .active
                }
                .buttonStyle(StartButtonStyle())
            case .paused:
                Button("Resume") {
                    model.state = .resumed
                }
                .buttonStyle(PauseButtonStyle())
            case .active, .resumed:
                Button("Pause") {
                    model.state = .paused
                }
                .buttonStyle(PauseButtonStyle())
            }
        }
        .padding(.horizontal, 32)
    }
    
    var timePickerControl: some View {
        HStack() {
            TimePickerView(title: "hours", range: model.hoursRange, binding: $model.selectedHoursAmount)
            TimePickerView(title: "min", range: model.minutesRange, binding: $model.selectedMinutesAmount)
            TimePickerView(title: "sec", range: model.secondsRange, binding: $model.selectedSecondsAmount)
        }
        .frame(width: 360, height: 255)
        .padding(.all, 32)
    }
    
    var progressView: some View {
        ZStack {
            withAnimation {
                CircularProgressView(progress: $model.progress)
            }
            
            VStack {
                Text(model.secondsToCompletion.asTimestamp)
                    .font(.largeTitle)
                HStack {
                    Image(systemName: "bell.fill")
                    Text(model.completionDate, format: .dateTime.hour().minute())
                }
            }
        }
        .frame(width: 360, height: 255)
        .padding(.all, 32)
    }
    
    var body: some View {
        VStack {
            if model.state == .cancelled {
                timePickerControl
            } else {
                progressView
            }
            timerControls
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.black)
        .foregroundColor(.white)
    }
}

#Preview {
    TimerView()
}
