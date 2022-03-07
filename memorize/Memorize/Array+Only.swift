//
//  Array+Only.swift
//  Memorize
//
//  Created by Felipe on 07/03/22.
//

import Foundation

extension Array {
    var only: Element? {
        count == 1 ? first : nil
    }
}
