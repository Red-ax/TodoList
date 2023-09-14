//
//  ListRowView.swift
//  TodoList
//
//  Created by tref on 11.09.2023.
//

import SwiftUI

struct ListRowView: View {
    
    var item: ItemModel
    
    var body: some View {
        HStack {
            Image(systemName: item.isCompleted ? "checkmark.circle" : "circle")
                .foregroundColor(item.isCompleted ? .green : .red)
            
            Text(item.title)
            Spacer()
        }
        .font(.title3)
        .padding(.vertical, 8)
    }
}

#Preview {
    Group {
        ListRowView(item: ItemModel(title: "This is the first title!", isCompleted: true))
        ListRowView(item: ItemModel(title: "This is the first title!", isCompleted: false))
    }
}

//struct ListRowView_Previews: PreviewProvider {
//    
//    static var item1 = ItemModel(title: "This is the first title!", isCompleted: true)
//    static var item2 = ItemModel(title: "This is the first title!", isCompleted: false)
//    
//    static var previews: some View {
//        Group {
//            ListRowView(item: item1)
//            ListRowView(item: item2)
//        }
//        .previewLayout(.sizeThatFits)
//    }
//}
