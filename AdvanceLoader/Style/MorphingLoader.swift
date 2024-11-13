//
//  MorphingLoader.swift
//  AdvanceLoader
//
//  Created by Praveen on 13/11/24.
//

import SwiftUI

struct MorphingLoader: View {
    @State private var morphing = false
        
        var body: some View {
            let animation = Animation
                .easeInOut(duration: 1.0)
                .repeatForever(autoreverses: true)
            
            return Rectangle()
                .fill(Color.blue)
                .frame(width: 50, height: 50)
                .cornerRadius(morphing ? 25 : 0)
                .scaleEffect(morphing ? 0.7 : 1)
                .rotation3DEffect(
                    .degrees(morphing ? 180 : 0),
                    axis: (x: 1, y: 1, z: 0)
                )
                .animation(animation, value: morphing)
                .onAppear {
                    morphing = true
                }
        }
}

#Preview {
    MorphingLoader()
}
