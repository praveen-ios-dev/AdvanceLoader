//
//  DNALoader.swift
//  AdvanceLoader
//
//  Created by Praveen on 13/11/24.
//

import SwiftUI

struct DNALoader: View {
    @State private var animate = false
    let dotCount = 10
    
    var body: some View {
        GeometryReader { geometry in
            HStack(spacing: geometry.size.width / CGFloat(dotCount)) {
                ForEach(0..<dotCount) { index in
                    Circle()
                        .fill(Color.blue.opacity(0.5))
                        .frame(width: 10, height: 10)
                        .offset(y: animate ? 20 : -20)
                        .animation(
                            Animation
                                .easeInOut(duration: 1)
                                .repeatForever()
                                .delay(Double(index) * 0.1),
                            value: animate
                        )
                }
            }
            HStack(spacing: geometry.size.width / CGFloat(dotCount)) {
                ForEach(0..<dotCount) { index in
                    Circle()
                        .fill(Color.purple.opacity(0.5))
                        .frame(width: 10, height: 10)
                        .offset(y: animate ? -20 : 20)
                        .animation(
                            Animation
                                .easeInOut(duration: 1)
                                .repeatForever()
                                .delay(Double(index) * 0.1),
                            value: animate
                        )
                }
            }
        }
        .frame(height: 50)
        .onAppear {
            animate = true
        }
    }
}

#Preview {
    DNALoader()
}
