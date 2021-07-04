//
//  OptionalImage.swift
//  EmojiArt
//
//  Created by Michael M. Kim on 2021/07/04.
//

import SwiftUI

struct OptionalImage: View {
    var uiImage: UIImage?
    
    var body: some View {
        Group {
            if uiImage != nil {
                Image(uiImage: uiImage!)
            }
        }
    }
    
}
