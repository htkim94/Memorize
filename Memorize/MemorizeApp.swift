//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Hotae Kim on 2023-03-16.
//

import SwiftUI

@main
struct MemorizeApp: App {
    
    let game = EmojiMemoryGame()
    
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: game)
        }
    }
}
