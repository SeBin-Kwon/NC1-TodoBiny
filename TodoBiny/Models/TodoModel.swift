//
//  TodoModel.swift
//  TodoBiny
//
//  Created by Sebin Kwon on 2023/06/05.
//

import Foundation

struct Todo: Identifiable, Hashable {
    let id: String
    let title: String
    let progress: Double
    let isCompleted: Bool
    
    init(id: String = UUID().uuidString, title: String, progress: Double, isCompleted: Bool) {
        self.id = id
        self.title = title
        self.progress = progress
        self.isCompleted = isCompleted
    }
    
    func updateTodo(id: String, newTitle: String, newProgress: Double, newCompleted: Bool) -> Todo {
        return Todo(id: id, title: newTitle, progress: newProgress, isCompleted: newCompleted)
    }
}

