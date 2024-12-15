//
//  ItemModel.swift
//  ToDoList
//
//  Created by Hinal Rajubhai Kharva on 14/12/24.
//

import Foundation

struct ItemModel: Identifiable {
    let id: String = UUID().uuidString
    let title: String
    let isCompleted: Bool
}
