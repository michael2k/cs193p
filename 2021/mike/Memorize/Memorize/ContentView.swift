//
//  ContentView.swift
//  Memorize
//
//  Created by Michael M. Kim on 2022/10/03.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        NavigationStack {
            NavigationLink("Next view please", value: "DevTechie.com")
            .navigationDestination(for: String.self) { val in
                Text("Here is the second view with value: \(val)")
                    .font(.title)
            }
            .navigationTitle("게임")
        }
//        let game = EmojiMemoryGame()
//        GameView(viewModel: game)
    }
}

struct GameView: View {
    @ObservedObject var viewModel: EmojiMemoryGame
    
    var body: some View {
        ScrollView {
            LazyVGrid (columns: [GridItem(.adaptive(minimum: 65))] ) {
                ForEach(viewModel.cards) { card in
                    CardView(card: card)
                        .aspectRatio(2/3, contentMode: .fit)
                        .onTapGesture {
                            viewModel.choose(card)
                        }
                }
            }
        }
        .foregroundColor(.red)
        .padding(.horizontal)
    }
}


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










struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
