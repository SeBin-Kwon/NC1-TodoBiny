//
//  TodoModel.swift
//  TodoBiny
//
//  Created by Sebin Kwon on 2023/06/05.
//

import Foundation

struct Todo: Identifiable {
    let id: String = UUID().uuidString
    let title: String
    var progress: Double
}
