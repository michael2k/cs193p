//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Michael M. Kim on 2022/10/09.
//

import SwiftUI

class EmojiMemoryGame {
    static let emojis = ["🚗","🚕","🚙","🚌","🚎","🏎",
                "🚓","🚑","🚒","🚐","🛻","🚚",
                "🚛","🚜","🛵","🏍","🛺","🛞",
                "🚔","🚍","🚘","🚖","🚡","🚠"]

    static func createMemeoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 3) { pairIndex in
            emojis[pairIndex]
        }
    }
    
    private var model: MemoryGame<String> = createMemeoryGame()

    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    
    // MARK: = Intent(s)
    
    func choose(_ card: MemoryGame<String>.Card) {
        model.choose(card)
    }
    
}
