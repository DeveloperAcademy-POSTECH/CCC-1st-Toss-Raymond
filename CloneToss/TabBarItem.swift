//
//  TabBarIcon.swift
//  CloneToss
//
//  Created by sanghyo on 2022/07/04.
//

import Foundation

enum TabBarItem: CaseIterable {
    case home, benefit, remittance, stock, all
    
    var iconName: String {
        switch self {
        case .home:
            return "홈"
        case .benefit:
            return "혜택"
        case .remittance:
            return "송금"
        case .stock:
            return "주식"
        case .all:
            return "전체"
        }
    }
    
    var imageName: String {
        switch self {
        case .home:
            return "house.fill"
        case .benefit:
            return "diamond.fill"
        case .remittance:
            return "wonsign.circle.fill"
        case .stock:
            return "chart.bar.fill"
        case .all:
            return "line.3.horizontal"

        }
    }
}
