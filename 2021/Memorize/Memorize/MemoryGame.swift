//
//  MemoryGame.swift
//  Memorize
//
//  Created by Michael M. Kim on 2022/10/09.
//

import Foundation

struct MemoryGame<CardContent> {
    private(set) var cards: Array<Card>
    
    mutating func choose(_ card: Card) {
        // if let chosenIndex = index(of: card) {
        // if let chosenIndex = cards.firstIndex(where: { aCardINTheCardsArray in aCardINTheCardsArray.id == card.id }){
        if let chosenIndex = cards.firstIndex(where: { $0.id == card.id }){
            
            
            cards[chosenIndex].isFaceUp.toggle()
        }
        print("\(cards)")
    }
    
//    func index(of card: Card) -> Int? {
//        for index in 0..<cards.count {
//            if cards[index].id == card.id {
//                return index
//            }
//        }
//        return nil
//    }
    
    init(numberOfPairsOfCards: Int, createCardContent: (Int) -> CardContent) {
        cards = Array<Card>()
        // add numberOfPairsOfCards X 2 cards to cards array
        for pairIndex in 0..<numberOfPairsOfCards {
            let content:CardContent = createCardContent(pairIndex)
            cards.append(Card(content: content, id: pairIndex*2))
            cards.append(Card(content: content, id: pairIndex*2+1))
        }
    }
    
    struct Card: Identifiable {
        var isFaceUp: Bool = true
        var isMatched: Bool = false
        var content: CardContent
        var id: Int
    }
}
