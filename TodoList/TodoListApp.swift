//
//  TodoListApp.swift
//  TodoList
//
//  Created by tref on 11.09.2023.
//

import SwiftUI

@main
struct TodoListApp: App {
    
    @StateObject var listViewModel: ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                ListView()
            }
//            .navigationSplitViewStyle(.automatic)
            .environmentObject(listViewModel)
        }
    }
}
