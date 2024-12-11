//
//  FrameworkGridView.swift
//  Frameworks The App
//
//  Created by Sbulelo Langa on 2024/11/18.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var viewModel = FrameworkGridViewModel()
    
    var body: some View {
        
        NavigationStack{
            List{
                ForEach(MockData.frameworks){framework in
                    NavigationLink(destination: DetailView(framework: framework, isShowingDetailView: $viewModel.isShowingDetailView)){
                        
                        FrameworkTitleView(framework: framework)
                    }
                }
            }
            
            .navigationTitle("Frameworks")
        }
        .tint(Color(.label))
    }
}

#Preview {
    FrameworkGridView()
}


