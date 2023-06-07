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
    
    var body: some View {
        NavigationView {
            Form {
                TextField("할 일을 적어주세요.", text: $todoText)
            }
            .navigationTitle("Add a Todo")
            .toolbar {
                ToolbarItem {
                    Button("Save") {
                        saveButton()
                    }
                    .disabled(todoText.count == 0)
                }
            }
        }
        
    }
    
    func saveButton() {
        todoViewModel.addItem(title: todoText)
        dismiss()
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        AddView()
            .environmentObject(TodoViewModel())
    }
}
