//
//  extension+Int.swift
//  CloneToss
//
//  Created by sanghyo on 2022/07/05.
//

import Foundation

extension String {
    var commaFormatted: String {
        let commaCount = (self.count - 1) / 3
        var value = self
        var comparedIndex = value.endIndex
        for cnt in 0..<commaCount {
            comparedIndex = value.index(comparedIndex, offsetBy: -3)
            value.insert(",", at: comparedIndex)
        }
        return value
    }
}
