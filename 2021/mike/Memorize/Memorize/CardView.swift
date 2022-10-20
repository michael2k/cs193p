//
//  CardView.swift
//  Memorize
//
//  Created by Michael M. Kim on 2022/10/20.
//

import SwiftUI

struct CardView: View {
    let card: MemoryGame<String>.Card
    
    var body: some View {
        ZStack {
            let shape = RoundedRectangle(cornerRadius: 20)
            if card.isFaceUp {
                shape.fill().foregroundColor(.white)
                shape.strokeBorder(lineWidth: 3)
                Text(card.content).font(.largeTitle)
            } else if card.isMatched {
                shape.opacity(0)
            } else {
                shape.fill()
            }
        }
    }
}


struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        let game = EmojiMemoryGame()
        let card = game.cards[1]
        
        CardView(card: card)
            .aspectRatio(2/3, contentMode: .fit)
            .foregroundColor(.red)
            .onTapGesture {
                game.choose(card)
            }
    }
}
