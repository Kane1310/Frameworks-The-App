//
//  DetailView.swift
//  Frameworks The App
//
//  Created by Sbulelo Langa on 2024/11/19.
//

import SwiftUI

struct DetailView: View {
    
    var framework: Framework
    @Binding var isShowingDetailView: Bool
    
    var body: some View {
        
        VStack(spacing: 8){
            
            HStack{
                Spacer()
                Button {
                    isShowingDetailView = false
                } label: {
                    Image(systemName: "xmark")
                        .foregroundStyle(Color(.label))
                        .imageScale(.large)
                        .frame(width: 44, height: 44)
                }
            }.padding()
           

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
    DetailView(framework: MockData.sampleFramework, isShowingDetailView: .constant(false))
}



