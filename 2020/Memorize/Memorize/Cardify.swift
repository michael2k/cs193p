//
//  Cardify.swift
//  Memorize
//
//  Created by Michael M. Kim on 2021/06/27.
//

import SwiftUI

struct Cardify: ViewModifier {
    var isFaceUp: Bool
    
    func body(content: Content) -> some View {
        ZStack {
            if isFaceUp {
                RoundedRectangle(cornerRadius: conrnerRadius).fill(Color.white)
                RoundedRectangle(cornerRadius: conrnerRadius).stroke(lineWidth: edgeLineWidth)
                content
            } else {
                RoundedRectangle(cornerRadius: conrnerRadius).fill()
            }
        }
    }
    
    private let conrnerRadius: CGFloat = 10.0
    private let edgeLineWidth: CGFloat = 3

}

extension View {
    func cardify(isFaceUp: Bool) -> some View {
        self.modifier(Cardify(isFaceUp: isFaceUp))
    }
}
