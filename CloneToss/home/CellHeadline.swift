//
//  CellHeadline.swift
//  CloneToss
//
//  Created by sanghyo on 2022/07/05.
//

import SwiftUI

extension Home {
    struct CellHeadline: View {
        private let title: String
        
        init(title: String) {
            self.title = title
        }
        
        var body: some View {
            HStack {
                Text(title)
                    .font(.title)
                    .fontWeight(.semibold)
                Spacer()
                Image(systemName: "chevron.right")
                    .foregroundColor(.gray)
            }
        }
    }
}

struct CellHeadline_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
