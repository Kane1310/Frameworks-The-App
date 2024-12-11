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
                        }
                        
                    }
                }
            }
            .navigationTitle("Frameworks")
            .navigationDestination(for: Framework.self) { Framework in
                DetailView(framework: Framework)
            }
            
        }
    }
}

#Preview {
    FrameworkGridView()
}

struct FrameworkTitleView: View {
    
    let framework: Framework
    
    var body: some View {
        VStack{
            Image(framework.imageName)
                .resizable()
                .frame(width: 90, height: 90, alignment: .center)
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }.padding()
    }
}
