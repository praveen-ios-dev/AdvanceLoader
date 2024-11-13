//
//  ContentView.swift
//  AdvanceLoader
//
//  Created by Praveen on 13/11/24.
//

import SwiftUI

struct AdvanceLoader: View {
    
    let columns = [
        GridItem(.flexible())
    ]
    let loaders = [
        AdvancedLoader(style: .gradientRing),
        AdvancedLoader(style: .morphingShape),
        AdvancedLoader(style: .wave),
        AdvancedLoader(style: .spiral),
        AdvancedLoader(style: .typingIndicator),
        AdvancedLoader(style: .progressRing),
        AdvancedLoader(style: .dnaHelix)
    ]
    
    var body: some View{
        LazyVGrid(columns: columns, content: {
            ForEach(0..<loaders.count, id: \.self) { index in
                loaders[index]
                    .padding(32)
            }
        })
    }
    
}

#Preview {
    AdvanceLoader()
}
