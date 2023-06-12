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
    @State private var isDelete = false
    
    var body: some View {
        VStack {
            ForEach(todoViewModel.items, id:\.self){
                item in
                if !item.isCompleted {
                    ListRowView(item: item)
                        .padding(.vertical, 5)
                        .padding(.horizontal, 17)
                }
            }
            .onDelete(perform: todoViewModel.deleteItem)
            .onMove(perform: todoViewModel.moveItem)
            Spacer()
        }
//        .padding()
//        .background(Color("lightGray"))
//        .toolbar {
//            ToolbarItem() {
//                EditButton()
//            }
//            ToolbarItem {
//                Button {
//                    isAdd.toggle()
//                } label: {
//                    Label("Add a Todo", systemImage: "plus")
//                }
//            }
//        }
//        .sheet(isPresented: $isAdd) {
//            AddView()
//                .presentationDetents([.fraction(0.3)])
//        }
    }
}

struct DoView_Previews: PreviewProvider {
    static var previews: some View {
        DoView()
            .environmentObject(TodoViewModel())
    }
}
