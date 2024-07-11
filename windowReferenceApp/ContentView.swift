//
// -----------------------------------------
// Original project: windowReferenceApp
// Original package: windowReferenceApp
// Created on: 11/07/2024 by: Steven Barnett
// Web: http://www.sabarnett.co.uk
// GitHub: https://www.github.com/sabarnett
// -----------------------------------------
// Copyright © 2024 Steven Barnett. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
            
            Button(action: { dismiss() }
            , label: { Text("Close Me") })
            
            HostingWindowFinder { win in
                guard let win else { return }
                setAttributes(window: win)
            }
            .frame(height: 0)
        }
        .padding()
        .frame(width: 300, height: 300)
    }
    
    func setAttributes(window: NSWindow) {
        window.standardWindowButton(.closeButton)?.isHidden = true
        window.standardWindowButton(.miniaturizeButton)?.isHidden = true
        window.standardWindowButton(.zoomButton)?.isHidden = true
        window.isMovableByWindowBackground = true
        window.titleVisibility = .hidden
        window.titlebarAppearsTransparent = true
    }
}




#Preview {
    ContentView()
}
