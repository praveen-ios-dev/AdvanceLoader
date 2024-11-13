//
//  GradientRingLoader.swift
//  AdvanceLoader
//
//  Created by Praveen on 13/11/24.
//

import SwiftUI

struct GradientRingLoader: View {
    @State private var isRotating = false
    
    let gradient = AngularGradient(
        gradient: Gradient(colors: [
            .blue, .purple, .pink, .red, .orange, .yellow, .green, .blue
        ]),
        center: .center
    )
    
    var body: some View {
        Circle()
            .strokeBorder(gradient, lineWidth: 8)
            .frame(width: 50, height: 50)
            .rotationEffect(Angle(degrees: isRotating ? 360 : 0))
            .animation(
                .linear(duration: 2)
                .repeatForever(autoreverses: false),
                value: isRotating
            )
            .onAppear {
                isRotating = true
            }
    }
}

#Preview {
    GradientRingLoader()
}
