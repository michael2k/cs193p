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
                    //                Text("Here is the second view with value: \(val)")
                    //                    .font(.title)
                    let game = EmojiMemoryGame()
                    GameView(viewModel: game)
            }
            .navigationTitle("게임")
            NavigationLink("Next view please", value: "DevTechie.com")
                .navigationDestination(for: String.self) { val in
                    //                Text("Here is the second view with value: \(val)")
                    //                    .font(.title)
                    let game = EmojiMemoryGame()
                    GameView(viewModel: game)
            }
            .navigationTitle("게임")
        }
//        let game = EmojiMemoryGame()
//        GameView(viewModel: game)
    }
}











struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
