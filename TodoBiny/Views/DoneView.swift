//
//  DoneView.swift
//  TodoBiny
//
//  Created by Sebin Kwon on 2023/06/02.
//

import SwiftUI

struct DoneView: View {
    @EnvironmentObject var todoViewModel: TodoViewModel
//    @State var isUpdate = false
    var body: some View {
        List {
            ForEach(todoViewModel.items, id:\.self){
                item in
                if item.isCompleted {
                    ListRowView(item: item)

                }
            }
        }

    }
}

struct DoneView_Previews: PreviewProvider {
    static var previews: some View {
        DoneView()
            .environmentObject(TodoViewModel())
    }
}
