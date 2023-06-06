//
//  AddView.swift
//  TodoBiny
//
//  Created by Sebin Kwon on 2023/06/05.
//

import SwiftUI

struct AddView: View {
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var todoViewModel: TodoViewModel
    @State private var todoText = ""
    @State private var save = false
    
    @State private var showAlart = false
    
    var body: some View {
        NavigationView {
            Form {
                TextField("Todo", text: $todoText)
            }
            .navigationTitle("Add a Todo")
            .toolbar {
                ToolbarItem {
                    Button("Save") {
                        saveButton()
                    }
                }
            }
        }
    }
    
    func saveButton() {
        if textIsAppropriate() {
            todoViewModel.addItem(title: todoText)
            dismiss()
        }
    }
    
    func textIsAppropriate() -> Bool {
        if todoText.count == 0 {
            return false
        }
        return true
    }
    
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        AddView()
            .environmentObject(TodoViewModel())
    }
}
