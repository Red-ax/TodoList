//
//  ListView.swift
//  TodoList
//
//  Created by tref on 11.09.2023.
//

import SwiftUI

struct ListView: View {
    
    @State private var items: [ItemModel] = [
        ItemModel(title: "This is the first title!", isCompleted: false),
        ItemModel(title: "This is the second title!", isCompleted: true),
        ItemModel(title: "This is the third title!", isCompleted: true),
        ItemModel(title: "This is the fourth title!", isCompleted: false),
        ItemModel(title: "This is the fifth title!", isCompleted: true),
    ]
    
    var body: some View {
        
        List {
            ForEach(items) { item in
                ListRowView(item: item)
            }
        } // List
        .listStyle(.plain)
        .navigationTitle("Todo List 📝")
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Button("Edit") {
                    
                }
            }
            ToolbarItem(placement: .navigationBarTrailing) {
                NavigationLink("Add", destination: AddView())
            }
        } // toolbar
        
    }
}


// MARK: PREVIEW
struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            ListView()
        }
    }
}

