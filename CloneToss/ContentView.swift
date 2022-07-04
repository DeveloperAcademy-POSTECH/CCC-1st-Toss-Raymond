//
//  ContentView.swift
//  CloneToss
//
//  Created by sanghyo on 2022/06/30.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewChanger: ViewChanger
    
    var body: some View {
        NavigationView {
        VStack {
            switch viewChanger.currentTab {
            case .home:
                Home()
            case .benefit:
                Benefit()
            case .remittance:
                Remittance()
            case .stock:
                Stock()
            case .all:
                All()
                
            }
            Spacer()
            tabBar
        }
        .edgesIgnoringSafeArea(.bottom)
        }
    }
    
    //MARK: - viewBuilder
    @ViewBuilder
    private var tabBar: some View {
        let insets = EdgeInsets(top: 10, leading:  20, bottom: 40, trailing: 20)
        HStack {
            ForEach(TabBarItem.allCases, id: \.self) {
                TabBarIconContainer(tabName: $0, viewChanger: viewChanger)
                    .frame(maxWidth: .infinity, alignment: .bottom)
            }
        }
        .padding(insets)
        .background(.white)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewChanger: ViewChanger())
    }
}
