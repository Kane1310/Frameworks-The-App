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
            ScrollView {
                LazyVGrid(columns: viewModel.columns){
                    
                    ForEach(MockData.frameworks){framework in
                        NavigationLink(value: framework){
                            FrameworkTitleView(framework: framework)
                                .onTapGesture {
                                    viewModel.selectedFramework = framework
                                }
                        }
                        
                    }
            }
        }
            .navigationTitle("Frameworks")
            .fullScreenCover(isPresented: $viewModel.isShowingDetailView){
                DetailView(framework: viewModel.selectedFramework ?? MockData.sampleFramework, isShowingDetailView: $viewModel.isShowingDetailView)
            }
        
            
        }
    }
}

#Preview {
    FrameworkGridView()
}


