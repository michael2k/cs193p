//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Michael M. Kim on 2022/10/03.
//

import SwiftUI

@main
struct MemorizeApp: App {
    let game = EmojiMemoryGame()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
