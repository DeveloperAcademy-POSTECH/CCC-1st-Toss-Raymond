//
//  Home.swift
//  CloneToss
//
//  Created by sanghyo on 2022/07/04.
//

import SwiftUI

struct Home: View {
    var body: some View {
        ScrollView {
            
        }
        .toolbar {
            ToolbarItemGroup(placement: .navigationBarTrailing) {
                HStack(spacing: 20) {
                Image(systemName: "message.fill")
                Image(systemName: "bell.fill")
                }
            }
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
