//
//  CloneTossApp.swift
//  CloneToss
//
//  Created by sanghyo on 2022/06/30.
//

import SwiftUI

@main
struct CloneTossApp: App {
    @StateObject private var viewChanger = ViewChanger()
    var body: some Scene {
        WindowGroup {
            ContentView(viewChanger: viewChanger)
        }
    }
}
