//
//  ItemModel.swift
//  TodoList
//
//  Created by tref on 13.09.2023.
//

import Foundation

struct ItemModel: Identifiable {
    let id: String = UUID().uuidString
    let title: String
    let isCompleted: Bool
}
