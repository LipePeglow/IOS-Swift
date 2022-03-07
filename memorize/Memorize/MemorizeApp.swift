//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Felipe on 03/03/22.
//

import SwiftUI

@main
struct MemorizeApp: App {
    var body: some Scene {
        WindowGroup {
            EmojiMemoryGameView(viewModel: EmojiMemoryGame())
        }
    }
}
