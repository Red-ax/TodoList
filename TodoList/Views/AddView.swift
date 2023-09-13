//
//  AddView.swift
//  TodoList
//
//  Created by tref on 11.09.2023.
//

import SwiftUI

struct AddView: View {
    
    @State private var textTF: String = ""
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                
                TextField("Type something here...", text: $textTF)
                    .frame(height: 55)
                    .padding(.horizontal)
                    .background(.gray.opacity(0.2))
                    .cornerRadius(10)
                
                Button {
                    
                } label: {
                    Text("SAVE")
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding(.horizontal)
                        .background(.cyan)
                        .cornerRadius(10)
                }

                
            } // VStack
            .padding()
        }
        .navigationTitle("Add an Item ✏️")
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            AddView()
        }
    }
}
