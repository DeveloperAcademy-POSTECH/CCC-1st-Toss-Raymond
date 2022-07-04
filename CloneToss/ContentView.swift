//
//  ContentView.swift
//  CloneToss
//
//  Created by sanghyo on 2022/06/30.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        NavigationView {
        VStack {
            Spacer()
            tabBar
        }
        .toolbar {
            ToolbarItemGroup(placement: .navigationBarTrailing) {
                HStack(spacing: 20) {
                Image(systemName: "message.fill")
                Image(systemName: "bell.fill")
                }
            }
        }
        .edgesIgnoringSafeArea(.bottom)
        }
    }
    
    //MARK: - viewBuilder
    @ViewBuilder
    private var tabBar: some View {
        let insets = EdgeInsets(top: 10, leading:  20, bottom: 40, trailing: 20)
        HStack {
            ForEach(TabBarIcon.allCases, id: \.self) {
                TabBarIconContainer(imageName: $0.imageName, iconName: $0.iconName)
                    .frame(maxWidth: .infinity, alignment: .bottom)
            }
        }
        .padding(insets)
        .background(.white)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
