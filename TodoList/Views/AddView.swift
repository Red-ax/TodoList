//
//  AddView.swift
//  TodoList
//
//  Created by tref on 11.09.2023.
//

import SwiftUI

struct AddView: View {
    @Environment(\.dismiss) var dismiss
    
    @EnvironmentObject var listViewModel: ListViewModel
    @State private var textTF: String = ""
    
    @State private var showAlert: Bool = false
    
    // MARK: BODY
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                
                TextField("Type something here...", text: $textTF)
                    .frame(height: 55)
                    .padding(.horizontal)
                    .background(.gray.opacity(0.2))
                    .cornerRadius(10)
                
                Button {
                    saveButtonPressed()
                } label: {
                    Text("SAVE")
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding(.horizontal)
                        .background(Color.accentColor)
                        .cornerRadius(10)
                }
                
                
            } // VStack
            .padding()

        }
        .navigationTitle("Add an Item ✏️")
        .alert(isPresented: $showAlert, content: getAlert)
    }
    
    // MARK: FUNCTIONS
    
    // saveButtonPressed
    func saveButtonPressed() {
        if textIsAppropriate() {
            listViewModel.addItem(title: textTF)
            dismiss()
        }
    }
    
    // textIsAppropriate
    func textIsAppropriate() -> Bool {
        if textTF.count < 4 {
            showAlert.toggle()
            return false
        }
        return true
    }
    
    // getAlert
    func getAlert() -> Alert {
        let alertMessage: String = "Your new todo item must be at least 4 characters long !!! 😟😨😱"
        return Alert(title: Text("Warning!"), message: Text(alertMessage), dismissButton: .cancel())
    }
}

#Preview {
    NavigationStack {
        AddView()
    }
}
