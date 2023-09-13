//
//  TestPreview.swift
//  TodoList
//
//  Created by tref on 13.09.2023.
//

import SwiftUI

struct TestPreview: View {
    
    @State private var showText: Bool = false
    
    var body: some View {
        VStack {
            
            Text(showText ? "Fuck you!" : "Hello!")
                .font(.largeTitle)
                .animation(.linear)
            
            Text("Hello world!")
                .font(.title)
                .foregroundStyle(.white)
                .padding()
                .background(.mint)
                .cornerRadius(12)
                .onTapGesture {
                    showText.toggle()
                }
        }
    }
}

#Preview {
    TestPreview()
}
