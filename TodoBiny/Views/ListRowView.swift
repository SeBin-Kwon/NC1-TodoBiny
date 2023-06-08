//
//  ListRowView.swift
//  TodoBiny
//
//  Created by Sebin Kwon on 2023/06/05.
//

import SwiftUI

struct ListRowView: View {
    @EnvironmentObject var todoViewModel: TodoViewModel
    @State var item: Todo
    @State var newProgress: Double = 0.0
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text(item.title)
                Spacer()
                Text("\(Int(newProgress))")
                    .foregroundColor(Int(newProgress) == 0 ? .gray : .blue)
            }
            
            Slider(value: $newProgress,
                   in: 0...100,
            onEditingChanged: { editing in
                if !editing {
                    todoViewModel.updateItem(item: item, title: item.title, progress: newProgress)
                }
            })
        }
        .font(.title3)
        .padding(.vertical,10)
        .onAppear {
            newProgress = item.progress
        }
    }
}

//struct ListRowView_Previews: PreviewProvider {
//
//    static var item1 = Todo(title: "first item", progress: 0.0, isCompleted: false)
//    static var item2 = Todo(title: "second item", progress: 100, isCompleted: true)
//
//    static var previews: some View {
//        Group {
//            ListRowView(item: item1)
//            ListRowView(item: item2)
//        }
//        .previewLayout(.sizeThatFits)
//    }
//}
