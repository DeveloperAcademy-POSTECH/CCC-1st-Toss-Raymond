//
//  TabBarIcon.swift
//  CloneToss
//
//  Created by sanghyo on 2022/07/04.
//

import SwiftUI

struct TabBarIconContainer: View {
    let tabName: TabBarItem
    @ObservedObject var viewChanger: ViewChanger
    
    var body: some View {

        VStack(spacing: 5) {
            Image(systemName: tabName.imageName)
                .font(.title2)
            Text(tabName.iconName)
                .font(.caption)
        }
        .onTapGesture {
            viewChanger.currentTab = tabName
        }
        .opacity(tabName == viewChanger.currentTab ? 1 : 0.5)
    }
}

struct TabBarIconContainer_Previews: PreviewProvider {
    static var previews: some View {
        let icon = TabBarItem.home
        TabBarIconContainer(tabName: icon, viewChanger: ViewChanger())
    }
}
