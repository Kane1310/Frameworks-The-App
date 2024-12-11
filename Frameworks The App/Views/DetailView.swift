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
    @State private var isShowingSafariView = false
    
    var body: some View {
        
        VStack(spacing: 8){
        FrameworkTitleView(framework: framework)
                .padding()
            Text(framework.description)
                .font(.body)
                .padding()
            Spacer()
            Button {
               isShowingSafariView = true
            } label: {
                FrameworksButton(title: "Learn More")
            }
            .sheet(isPresented: $isShowingSafariView){
                SafariView(url: URL(string: framework.urlString) ?? URL(string: "www.apple.com")!)
            }

            
        }
    }
}

#Preview {
    DetailView(framework: MockData.sampleFramework, isShowingDetailView: .constant(false))
}



