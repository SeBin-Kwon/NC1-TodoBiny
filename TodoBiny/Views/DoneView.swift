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
        VStack {
            ForEach(todoViewModel.items, id:\.self){
                item in
                if item.isCompleted {
                    ListRowView(item: item)
                        .padding(.vertical, 5)
                        .padding(.horizontal, 17)
                }
            }
            Spacer()
        }
    }
}

struct DoneView_Previews: PreviewProvider {
    static var previews: some View {
        DoneView()
            .environmentObject(TodoViewModel())
    }
}
