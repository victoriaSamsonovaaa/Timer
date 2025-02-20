//
//  CircularProgressView.swift
//  Timer App
//
//  Created by Victoria Samsonova on 20.02.25.
//

import SwiftUI

struct CircularProgressView: View {
    @Binding var progress: Float
    var body: some View {
        ZStack {
            Circle()
                .stroke(lineWidth: 8.0)
                .opacity(0.3)
                .foregroundStyle(.buttonCancel)
            
            Circle()
                .trim(from: 0.0, to: CGFloat(min(progress, 1.0)))
                .stroke(style: StrokeStyle(lineWidth: 8.0, lineCap: .round, lineJoin: .round))
                .foregroundStyle(.buttonPause)
                .rotationEffect(Angle(degrees: 270))
        }
        .animation(.linear(duration: 1.0), value: progress)
    }
}

#Preview {
    CircularProgressView(progress: .constant(0.1))
}
