//
//  File.swift
//  AdvanceLoader
//
//  Created by Praveen on 13/11/24.
//

import SwiftUI

enum LoaderStyle {
    case gradientRing
    case morphingShape
    case wave
    case spiral
    case typingIndicator
    case progressRing
    case dnaHelix
}

struct AdvancedLoader: View {
    let style: LoaderStyle
    
    var body: some View {
        Group {
            switch style {
            case .gradientRing:
                GradientRingLoader()
            case .morphingShape:
                MorphingLoader()
            case .wave:
                WaveLoader()
            case .spiral:
                SpiralLoader()
            case .typingIndicator:
                TypingIndicatorLoader()
            case .progressRing:
                ProgressRingLoader()
            case .dnaHelix:
                DNALoader()
            }
        }
    }
}
