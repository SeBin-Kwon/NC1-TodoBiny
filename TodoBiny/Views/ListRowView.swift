//
//  ListRowView.swift
//  TodoBiny
//
//  Created by Sebin Kwon on 2023/06/05.
//

import SwiftUI

struct ListRowView: View {
    @State var item: Todo
//    @State private var progress = 0.0
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text(item.title)
                Spacer()
                Text("\(Int(item.progress))")
                    .foregroundColor(Int(item.progress) == 0 ? .gray : .blue)
                    .animation(.easeInOut, value: item.progress)
            }
            Slider(value: $item.progress,
                   in: 0...100)
        }
        .font(.title3)
        .padding(.vertical,10)
        .onChange(of: item.progress) { newValue in
            if Int(newValue) == 100 {
                item.isCompleted = true
            } else {
                item.isCompleted = false
            }
        }
    }
}

struct ListRowView_Previews: PreviewProvider {
    
    static var item1 = Todo(title: "first item", progress: 0.0, isCompleted: false)
    static var item2 = Todo(title: "second item", progress: 100, isCompleted: true)
    
    static var previews: some View {
        Group {
            ListRowView(item: item1)
            ListRowView(item: item2)
        }
        .previewLayout(.sizeThatFits)
    }
}
