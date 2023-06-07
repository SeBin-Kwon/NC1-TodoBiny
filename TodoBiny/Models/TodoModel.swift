//
//  TodoModel.swift
//  TodoBiny
//
//  Created by Sebin Kwon on 2023/06/05.
//

import Foundation

struct Todo: Identifiable {
    let id: String
    let title: String
    var progress: Double
    var isCompleted: Bool
    
    init(id: String = UUID().uuidString, title: String, progress: Double, isCompleted: Bool) {
        self.id = id
        self.title = title
        self.progress = progress
        self.isCompleted = isCompleted
    }
}
