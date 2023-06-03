//
//  DoView.swift
//  TodoBiny
//
//  Created by Sebin Kwon on 2023/06/02.
//

import SwiftUI

struct DoView: View {
    var body: some View {
        VStack {
            HStack {
                Text("Do")
//                    .navigationTitle("do")
//                    .font(.largeTitle)
//                    .fontWeight(.bold)
                Spacer()
                Text("2")
                    .font(.largeTitle)
                    .fontWeight(.bold)
            }.padding(.horizontal,20)
            Spacer()
            List {
                Text("todo 1")
                Text("todo 2")
            }
            .navigationTitle("Z")
        }
    }
}

struct DoView_Previews: PreviewProvider {
    static var previews: some View {
        DoView()
    }
}
