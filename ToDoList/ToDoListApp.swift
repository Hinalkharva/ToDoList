//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Hinal Rajubhai Kharva on 14/12/24.
//

import SwiftUI

/*
 MVVM Architecture
 Model - data point
 View - UI of my app
 ViewModel - that will manage model or data for the view means aya apda bdha data manage thay
 
 */

@main
struct ToDoListApp: App {
    
    @StateObject var listViewModel: ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView{
                ListView()
            }
            .environmentObject(listViewModel)
        }
    }
}
