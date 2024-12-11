//
//  DetailView.swift
//  Frameworks The App
//
//  Created by Sbulelo Langa on 2024/11/19.
//

import SwiftUI

struct DetailView: View {
    
    var framework: Framework
   
    
    var body: some View {
        
        VStack(spacing: 8){

            FrameworkTitleView(framework: framework)
                .padding()
            Text(framework.description)
                .font(.body)
                .padding()
            Spacer()
            Button {
                print("pressed")
            } label: {
//                FrameworksButton(title: "Learn More")
                Label("Learn More", systemImage: "book.fill")
            }.buttonStyle(.bordered)
                .padding()
                .controlSize(.large)
                .buttonBorderShape(.roundedRectangle(radius: 20))
                .tint(.red)
            
            

            
        }
    }
}

#Preview {
    DetailView(framework: MockData.sampleFramework)
}



