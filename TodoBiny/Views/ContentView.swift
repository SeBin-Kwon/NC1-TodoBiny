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
    @State private var isAdd = false
    var body: some View {
        TabView(selection: $selectedTab) {
            DoView()
                .tag(0)
                .tabItem {
                    Label("Do", systemImage: "circle.dashed")
                }
            
            DoneView()
                .tag(1)
                .tabItem {
                    Label("Done", systemImage: "checkmark.circle.fill")
                }
            
            SettingView()
                .tag(2)
                .tabItem {
                    Label("Setting", systemImage: "gearshape")
                }
        }
        .toolbar {
            ToolbarItemGroup {
//                EditButton()
                EditView
                Button {
                    isAdd.toggle()
                } label: {
                    Label("Add a Todo", systemImage: "plus")
                }
            }
        }
        .sheet(isPresented: $isAdd) {
            AddView()
                .presentationDetents([.fraction(0.3)])
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
    //
    //    func editButton() {
    //
    //}
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            NavigationView {
                ContentView()
            }
            .environmentObject(TodoViewModel())
        }
    }
}

extension ContentView {
    // Edit 뷰
    var EditView: some View {
        Button {
            isAdd.toggle()
        } label: {
            Label("Selete a Todo", systemImage: "square.dashed")
        }
    }
}
