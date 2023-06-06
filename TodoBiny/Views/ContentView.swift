//
//  ContentView.swift
//  TodoBiny
//
//  Created by Sebin Kwon on 2023/06/02.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedTab = 0
    @State private var title = "Do"
//    @State private var isAdd = false
    var body: some View {
        TabView(selection: $selectedTab) { 
            DoView()
                .tag(0)
                .tabItem {
                    Label("Do", systemImage: "checkmark.square.fill")
                }
                
            DoneView()
                .tag(1)
                .tabItem {
                    Label("Done", systemImage: "checkmark.square.fill")
                }
            SettingView()
                .tag(2)
                .tabItem {
                    Label("Setting", systemImage: "checkmark.square.fill")
                }
        }
        .navigationTitle($title)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {        
            ContentView()
        }
        .environmentObject(TodoViewModel())
    }
}
