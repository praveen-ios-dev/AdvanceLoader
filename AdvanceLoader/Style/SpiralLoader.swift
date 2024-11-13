//
//  SpiralLoader.swift
//  AdvanceLoader
//
//  Created by Praveen on 13/11/24.
//

import SwiftUI

struct SpiralLoader: View {
    @State private var animate = false
        let dotCount = 12
        
        var body: some View {
            let animation = Animation
                .linear(duration: 2)
                .repeatForever(autoreverses: false)
            
            return ZStack {
                ForEach(0..<dotCount) { index in
                    Circle()
                        .fill(Color.blue.opacity(0.5))
                        .frame(width: 10, height: 10)
                        .offset(y: -30)
                        .rotationEffect(.degrees(Double(index) * 360/Double(dotCount)))
                        .scaleEffect(animate ? 0.3 : 1)
                        .animation(
                            animation.delay(Double(index) * 0.1),
                            value: animate
                        )
                }
            }
            .onAppear {
                animate = true
            }
        }
}

#Preview {
    SpiralLoader()
}
