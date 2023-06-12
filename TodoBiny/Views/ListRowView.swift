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
//    @State var newTitle: String
    @State var newProgress: Double = 0.0
    @State var newCompleted: Bool = false
//    let itemId: UUID
    
//    init(_ data: Todo) {
//        self.itemId = data.id
//        self._item = State(initialValue: data)
//        self._newTitle = State.init(initialValue: data.title)
//        self._newProgress = State.init(initialValue: data.progress)
//        self._newCompleted = State.init(initialValue: data.isCompleted)
//    }

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
                    newComplented()
                }
            })
        }
        .font(.title3)
        .padding(20)
        .background(
            RoundedRectangle(
                cornerRadius: 20,
                style: .continuous
            )
            .foregroundColor(.white.opacity(0.9))
            .shadow(
                color: Color("shadow").opacity(0.15),
                radius: 6,
                x: 5, y: 5
        )
        )
        .onAppear {
            newProgress = item.progress
        }
    }
    
    func newComplented() {
        if Int(newProgress) == 100 {
            newCompleted = true
        } else {
            newCompleted = false
        }
        todoViewModel.updateItem(item: item, newProgress: newProgress, newCompledted: newCompleted)
        print(item)
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
