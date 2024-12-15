//
//  AddView.swift
//  ToDoList
//
//  Created by Hinal Rajubhai Kharva on 14/12/24.
//

import SwiftUI

struct AddView: View {
    
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var listViewModel: ListViewModel
    @State var textFieldText: String = ""
    
    var body: some View {
        ScrollView{
            VStack {
                TextField("Type something here...", text: $textFieldText)
                    .padding(.horizontal)
                    .frame(height: 55)
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(10)
                
                Button(action: saveButtonPressed,label: {
                    Text("Save".uppercased())
                        .foregroundColor(.white)
                        .font(.headline)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(Color.accentColor)
                        .cornerRadius(10)
                })
            }
            .padding(15)
        }
        .navigationTitle("Add an Item🖊️")
    }
    func saveButtonPressed() {
        listViewModel.addItem(title: textFieldText)
        presentationMode.wrappedValue.dismiss()
    }
}

#Preview {
    NavigationView{
        AddView()
    }
    .environmentObject(ListViewModel())
}
