//
//  extension+View.swift
//  CloneToss
//
//  Created by sanghyo on 2022/07/05.
//

import Foundation
import SwiftUI

extension View {
    func cellLayout() -> some View {
        modifier(CellLayout())
    }
}
