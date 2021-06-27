//
//  Array+Only.swift
//  Memorize
//
//  Created by Michael M. Kim on 2021/06/27.
//

import Foundation

extension Array {
    var only: Element? {
        count == 1 ? first : nil
    }
}
