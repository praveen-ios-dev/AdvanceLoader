//
//  TypingIndicatorLoader.swift
//  AdvanceLoader
//
//  Created by Praveen on 13/11/24.
//

import SwiftUI

struct TypingIndicatorLoader: View {
    @State private var opacity1 = 0.0
    @State private var opacity2 = 0.0
    @State private var opacity3 = 0.0
    @State private var opacity4 = 0.0
    @State private var opacity5 = 0.0
    
    var body: some View {
        HStack(spacing: 4) {
            Circle()
                .fill(Color.gray)
                .frame(width: 8, height: 8)
                .opacity(opacity1)
            Circle()
                .fill(Color.gray)
                .frame(width: 8, height: 8)
                .opacity(opacity2)
            Circle()
                .fill(Color.gray)
                .frame(width: 8, height: 8)
                .opacity(opacity3)
            Circle()
                .fill(Color.gray)
                .frame(width: 8, height: 8)
                .opacity(opacity4)
            Circle()
                .fill(Color.gray)
                .frame(width: 8, height: 8)
                .opacity(opacity5)
        }
        .onAppear {
            withAnimation(Animation.easeInOut(duration: 0.5).repeatForever()) {
                opacity1 = 1
            }
            withAnimation(Animation.easeInOut(duration: 0.5).repeatForever().delay(0.2)) {
                opacity2 = 1
            }
            withAnimation(Animation.easeInOut(duration: 0.5).repeatForever().delay(0.4)) {
                opacity3 = 1
            }
            withAnimation(Animation.easeInOut(duration: 0.5).repeatForever().delay(0.6)) {
                opacity4 = 1
            }
            withAnimation(Animation.easeInOut(duration: 0.5).repeatForever().delay(0.8)) {
                opacity5 = 1
            }
        }
    }
}

#Preview {
    TypingIndicatorLoader()
}
