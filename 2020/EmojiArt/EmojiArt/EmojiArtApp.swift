//
//  EmojiArtApp.swift
//  EmojiArt
//
//  Created by Michael M. Kim on 2021/07/03.
//

import SwiftUI

@main
struct EmojiArtApp: App {
    let store = EmojiArtDocumentStore(named: "Emoji Art")
    
//    init() {
//        store.addDocument()
//        store.addDocument(named: "Hello World")
//    }
    
    var body: some Scene {
        WindowGroup {
            EmojiArtDocumentChooser().environmentObject(store)
            // EmojiArtDocumentView(document: EmojiArtDocument())
        }
    }
}
