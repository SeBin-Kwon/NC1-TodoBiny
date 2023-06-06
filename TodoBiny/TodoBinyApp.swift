//
//  TodoBinyApp.swift
//  TodoBiny
//
//  Created by Sebin Kwon on 2023/06/02.
//

import SwiftUI

@main
struct TodoBinyApp: App {
    
    @StateObject var todoViewModel = TodoViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
            .environmentObject(todoViewModel)
        }
    }
}
