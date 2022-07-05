//
//  Modifier.swift
//  CloneToss
//
//  Created by sanghyo on 2022/07/05.
//

import Foundation
import SwiftUI

struct CellLayout: ViewModifier {
    func body(content: Content) -> some View {
        let inset = EdgeInsets(top: 20, leading: 20, bottom: 20, trailing: 20)
        
        content
            .padding(inset)
            .background(
            RoundedRectangle(cornerRadius: 20)
                .foregroundColor(.white)
                .shadow(color: .gray, radius: 5)
            )
            .padding([.horizontal, .bottom], 15)
    }
}
