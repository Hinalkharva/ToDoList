//
//  ListView.swift
//  ToDoList
//
//  Created by Hinal Rajubhai Kharva on 14/12/24.
//

import SwiftUI

struct ListView: View {
    
    @EnvironmentObject var listViewModel: ListViewModel
    
    var body: some View {
        List{
            ForEach(listViewModel.items) { item in
                ListRowView(item: item)
            }
            .onDelete(perform: listViewModel.deleteItem)
            .onMove(perform: listViewModel.moveItem)
        }
        .listStyle(PlainListStyle())
        .navigationTitle("Todo List📝 ")
        .navigationBarItems(leading: EditButton(),
                            trailing:
                                NavigationLink("Add", destination: AddView())
        )
    }
}

#Preview {
    NavigationView{
        ListView()
    }
    .environmentObject(ListViewModel())
}

