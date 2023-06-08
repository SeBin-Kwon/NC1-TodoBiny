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
        .onChange(of: selectedTab) { newValue in
            switch selectedTab {
            case 0:
                title = "Do"
            case 1:
                title = "Done"
            case 2:
                title = "Setting"
            default:
                title = "Do"
            }
        }
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
