//
//  EmojiArtApp.swift
//  EmojiArt
//
//  Created by Michael M. Kim on 2021/07/03.
//

import SwiftUI

@main
struct EmojiArtApp: App {
//    let store = EmojiArtDocumentStore(named: "Emoji Art")

//    init() {
//        store.addDocument()
//        store.addDocument(named: "Hello World")
//    }
    
    var body: some Scene {
        WindowGroup {
            let url = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
            let store = EmojiArtDocumentStore(directory: url)
            EmojiArtDocumentChooser().environmentObject(store)
            // EmojiArtDocumentView(document: EmojiArtDocument())
        }
    }
}
