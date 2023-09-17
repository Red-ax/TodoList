//
//  NoItemsView.swift
//  TodoList
//
//  Created by tref on 16.09.2023.
//

import SwiftUI

struct NoItemsView: View {
    
    @State private var animate: Bool = false
    
    var body: some View {
        VStack(spacing: 10) {
            
            Text("There areno items!")
                .font(.title)
                .fontWeight(.semibold)
            Text("Are you a productive person? I think you should click the add buttonand add a bunch of items to your todo list!")

            
            NavigationLink(destination: AddView()) {
                Text("Add something 🥳")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .foregroundStyle(.white)
                    .background(animate ? Color.accentColor : .purple.opacity(1))
                    .cornerRadius(10)
            }
            .scaleEffect(animate ? 0.95 : 1.0)
            
        }
        .frame(maxWidth: 400)
        .multilineTextAlignment(.center)
        .padding(40)
        .onAppear(perform: addAnimations)
    }
    
    func addAnimations() {
        // To prevent the animation from being called again
        guard !animate else { return }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
            withAnimation(.linear(duration: 2.0).repeatForever()) {
                animate.toggle()
            }
        }
    }
}

#Preview {
    NavigationStack {
        NoItemsView()
            .navigationTitle("Title")
    }
}
