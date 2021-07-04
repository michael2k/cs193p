//
//  EmojiArtApp.swift
//  EmojiArt
//
//  Created by Michael M. Kim on 2021/07/03.
//

import SwiftUI

@main
struct EmojiArtApp: App {
    var body: some Scene {
        WindowGroup {
            EmojiArtDocumentView(document: EmojiArtDocument())
        }
    }
}
