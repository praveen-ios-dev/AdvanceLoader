//
//  WaveLoader.swift
//  AdvanceLoader
//
//  Created by Praveen on 13/11/24.
//

import SwiftUI

struct WaveLoader: View {
    @State private var animating = false
        let numberOfDots = 5
        
        var body: some View {
            HStack(spacing: 4) {
                ForEach(0..<numberOfDots) { index in
                    Circle()
                        .fill(Color.blue)
                        .frame(width: 10, height: 10)
                        .offset(y: animating ? -10 : 10)
                        .animation(
                            .easeInOut(duration: 0.5)
                            .repeatForever()
                            .delay(Double(index) * 0.1),
                            value: animating
                        )
                }
            }
            .onAppear {
                animating = true
            }
        }
}

#Preview {
    WaveLoader()
}
