//
//  Array+identifiable.swift
//  Memorize
//
//  Created by Michael M. Kim on 2021/06/26.
//

import Foundation

extension Array where Element: Identifiable {
    func firstIndex(matching: Element) -> Int? {
        for index in 0..<self.count {
            if self[index].id == matching.id {
                return index
            }
        }
        return nil
    }
}
