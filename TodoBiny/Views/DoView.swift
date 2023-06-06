//
//  DoView.swift
//  TodoBiny
//
//  Created by Sebin Kwon on 2023/06/02.
//

import SwiftUI

struct DoView: View {
    @EnvironmentObject var todoViewModel: TodoViewModel
    @State private var isAdd = false
    var body: some View {
        List {
            ForEach(todoViewModel.items){
                item in
                ListRowView(item: item)
            }
            .onDelete(perform: todoViewModel.deleteItem)
            .onMove(perform: todoViewModel.moveItem)
        }
        .toolbar {
            ToolbarItem() {
                EditButton()
            }
            ToolbarItem {
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
    }
}

struct DoView_Previews: PreviewProvider {
    static var previews: some View {
        DoView()
            .environmentObject(TodoViewModel())
    }
}
