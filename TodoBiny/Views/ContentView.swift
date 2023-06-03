//
//  ContentView.swift
//  TodoBiny
//
//  Created by Sebin Kwon on 2023/06/02.
//

import SwiftUI

struct ContentView: View {
    @State private var todolist = Array<String>()
    var todo = ""
    @State private var title = "Welcome"
    var body: some View {
        VStack {
            NavigationStack {
                        Text("Hello, world!")
                            .navigationTitle($title)
                            .navigationBarTitleDisplayMode(.inline)
                    }
            TabView {
                DoView()
                    .tabItem {
                        Label("Do", systemImage: "checkmark.square.fill")
                    }
                DoneView()
                    .tabItem {
                        Label("Done", systemImage: "checkmark.square.fill")
                    }
                SettingView()
                    .tabItem {
                        Label("Setting", systemImage: "checkmark.square.fill")
                    }
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
