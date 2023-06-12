//
//  TodoModel.swift
//  TodoBiny
//
//  Created by Sebin Kwon on 2023/06/05.
//

import Foundation

struct Todo: Identifiable, Hashable {
    let id: UUID
    let title: String
    let progress: Double
    let isCompleted: Bool
    
    init(id: UUID = UUID(), title: String, progress: Double, isCompleted: Bool) {
        self.id = id
        self.title = title
        self.progress = progress
        self.isCompleted = isCompleted
    }
    
//    mutating func updateData(newItem: Todo) {
//        self.title = newItem.title
//        self.progress = newItem.progress
//        self.isCompleted = newItem.isCompleted
//    }
    
    func updateTodo(id: UUID, newTitle: String, newProgress: Double, newCompleted: Bool) -> Todo {
        return Todo(id: id, title: newTitle, progress: newProgress, isCompleted: newCompleted)
    }
}

