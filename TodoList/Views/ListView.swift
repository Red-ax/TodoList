//
//  ListView.swift
//  TodoList
//
//  Created by tref on 11.09.2023.
//

import SwiftUI

struct ListView: View {
    
    @EnvironmentObject var listViewModel: ListViewModel
    
    // MARK: BODY
    
    var body: some View {
        
        ZStack {
            if listViewModel.items.isEmpty {
                NoItemsView()
            } else {
                List {
                    
                    ForEach(listViewModel.items) { item in
                        ListRowView(item: item)
                            .onTapGesture {
                                withAnimation(.linear(duration: 0.2)) {
                                    listViewModel.updateItem(item: item)
                                }
                            }
                    }
                    .onDelete(perform: listViewModel.deleteItem)
                    .onMove(perform: listViewModel.moveItem)
                    
                } // List
                .listStyle(.plain)
            }
        }
        .navigationTitle("Todo List 📝")
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                EditButton() // System Edit Button
            }
            ToolbarItem(placement: .navigationBarTrailing) {
                NavigationLink("Add", destination: AddView())
            }
        } // toolbar
        .bold()
        
    }
    
}


// MARK: PREVIEW
#Preview {
    NavigationStack {
        ListView()
    }
    .environmentObject(ListViewModel())
}
