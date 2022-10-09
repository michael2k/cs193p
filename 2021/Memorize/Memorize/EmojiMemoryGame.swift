//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Michael M. Kim on 2022/10/09.
//

import SwiftUI


//func makeContent(index: Int) -> String {
//    return "😀"
//}

class EmojiMemoryGame {
    static let emojis = ["🚗","🚕","🚙","🚌","🚎","🏎",
                "🚓","🚑","🚒","🚐","🛻","🚚",
                "🚛","🚜","🛵","🏍","🛺","🛞",
                "🚔","🚍","🚘","🚖","🚡","🚠"]

    static func createMemeoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 4) { pairIndex in
            emojis[pairIndex]
        }
    }
    
    // private var model: MemoryGame<String> = MemoryGame<String>(numberOfPairsOfCards: 4, createCardContent: { pairIndex in "😀" } )
    private var model: MemoryGame<String> = createMemeoryGame()

    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
}
