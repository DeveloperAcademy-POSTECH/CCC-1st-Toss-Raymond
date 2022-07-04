//
//  TabBarIcon.swift
//  CloneToss
//
//  Created by sanghyo on 2022/07/04.
//

import SwiftUI

struct TabBarIconContainer: View {
    let imageName: String
    let iconName: String
    
    var body: some View {

        VStack(spacing: 5) {
            Image(systemName: imageName)
                .font(.title2)
                
            Text(iconName)
                .font(.caption)
        }
    }
}

struct TabBarIconContainer_Previews: PreviewProvider {
    static var previews: some View {
        let icon = TabBarIcon.home
        TabBarIconContainer(imageName: icon.imageName, iconName: icon.iconName)
    }
}
