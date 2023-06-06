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
        let newItems = [Todo(title: "todo 123", progress: 0.0),Todo(title: "todo 123", progress: 0.0),Todo(title: "todo 123", progress: 0.0)]
        items.append(contentsOf: newItems)
    }
    
    func deleteItem(IndexSet: IndexSet) {
        items.remove(atOffsets: IndexSet)
    }
    
    func moveItem(from: IndexSet, to: Int) {
        items.move(fromOffsets: from, toOffset: to)
    }
    
    func addItem(title: String) {
        let newItem = Todo(title: title, progress: 0.0)
        items.append(newItem)
    }
}
