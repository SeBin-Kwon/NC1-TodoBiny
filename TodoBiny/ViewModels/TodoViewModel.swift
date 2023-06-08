//
//  TodoViewModel.swift
//  TodoBiny
//
//  Created by Sebin Kwon on 2023/06/06.
//

import Foundation

class TodoViewModel: ObservableObject {
    @Published var items: [Todo] = []
    
    init() {
        getItems()
    }
    
    func getItems() {
        let newItems = [Todo(title: "todo 1", progress: 0.0, isCompleted: false),
                        Todo(title: "todo 2", progress: 50.0, isCompleted: false),
                        Todo(title: "todo 3", progress: 100.0, isCompleted: true)]
        items.append(contentsOf: newItems)
    }
    
    func deleteItem(IndexSet: IndexSet) {
        items.remove(atOffsets: IndexSet)
    }
    
    func moveItem(from: IndexSet, to: Int) {
        items.move(fromOffsets: from, toOffset: to)
    }
    
    func addItem(title: String) {
        let newItem = Todo(title: title, progress: 0.0, isCompleted: false)
        items.append(newItem)
        print(items)
    }
    
    func updateItem(item: Todo, title: String, progress: Double) {
        if let index = items.firstIndex(where: { $0.id == item.id}) {
            var updateCompleted: Bool
            if Int(progress) == 100 {
                updateCompleted = true
            } else {
                updateCompleted = false
            }
            
            items[index] = item.updateTodo(id:item.id ,newTitle: title, newProgress: progress, newCompleted: updateCompleted)
            print(items)
        }
    }
}
