//
//  StartButtonStyle.swift
//  Timer App
//
//  Created by Victoria Samsonova on 20.02.25.
//

import SwiftUI

struct StartButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(width: 70, height: 70)
            .foregroundStyle(.buttonStart)
            .background(.buttonStart).opacity(0.3)
            .clipShape(.circle)
            .padding(.all, 3)
            .overlay(
                Circle()
                    .stroke((Color.buttonStart)
                    .opacity(0.3), lineWidth: 2)
            )
    }
}

struct PauseButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(width: 70, height: 70)
            .foregroundStyle(.buttonPause)
            .background(.buttonPause).opacity(0.3)
            .clipShape(.circle)
            .padding(.all, 3)
            .overlay(
                Circle()
                    .stroke((Color.buttonPause)
                    .opacity(0.3), lineWidth: 2)
            )
    }
}

struct CancelButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(width: 70, height: 70)
            .foregroundStyle(.buttonCancel)
            .background(.buttonCancel).opacity(0.3)
            .clipShape(.circle)
            .padding(.all, 3)
            .overlay(
                Circle()
                    .stroke((Color.buttonCancel)
                    .opacity(0.3), lineWidth: 2)
            )
    }
}
